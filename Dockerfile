FROM python:3.8.10-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
COPY wsgi.py wsgi.py

EXPOSE 5000

CMD ["python", "wsgi.py"] #, "--host=0.0.0.0"
