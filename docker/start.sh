function start_development() {
    flask run
}

function start_production() {
    gunicorn app.wsgi -w 4 -b 0.0.0.0:8000 --chdir=/code/ --log-file -
}

if [ ${PRODUCTION} == "False" ]; then
    # use development server
    start_development
else
    # use production server
    start_production
fi
