$gunicorn_path = "/code/docker/gunicorn"

function start_development() {
    flask run
}

function start_production() {
    echo ${gunicorn_path}/gunicorn.out.log
    gunicorn wsgi -w 4 -b 0.0.0.0:8000 &&
            --chdir=/code/ &&
            --log-file=${gunicorn_path}/gunicorn.out.log --error-logfile=${gunicorn_path}/gunicorn.err.log &&
            --capture_output=True
}

# if [ ${PRODUCTION} == "False" ]; then
#     # use development server
#     start_development
# else
#     # use production server
#     start_production
# fi
start_production
# start_development