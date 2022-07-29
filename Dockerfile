FROM python:3.7

EXPOSE 8080
WORKDIR /code/
ENV PYTHONPATH /code/

ADD requirements.txt .

RUN --mount=type=bind,target=/root/.cache/pip,from=./pip-cache pip install -r requirements.txt && \
    pip install gunicorn gevent && \
    ls -al /root/.cache/pip

ADD quotes.py /code/quotes.py

CMD ["gunicorn", "--worker-class", "gevent", "--access-logfile", "-", "--capture-output", "--enable-stdio-inheritance", "-b", "0.0.0.0:8080", "quotes:app"]
