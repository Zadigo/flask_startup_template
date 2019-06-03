FROM python:3
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

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

ENTRYPOINT [ "flask", "run" ]
