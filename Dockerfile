FROM python:3
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

LABEL "com.example.app"="App"

COPY ./docker/start.sh /start/
RUN chmod +x /start/start.sh


# Application management & firing
RUN mkdir code
WORKDIR /code

# Copy dependencies files
# for installation
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

# Install PIPENV
RUN pip3 install pipenv
RUN pipenv install --deploy --system

COPY . .

RUN chmod +x app.py

EXPOSE 80 445

# Start management file
# ENTRYPOINT [ "/start/start.sh" ]
# ...test flask production server
# ENTRYPOINT [ "flask", "run" ]
CMD gunicorn "app:Main()" -w 4 -b 0.0.0.0:8000 --chdir=/code/ --log-file -
