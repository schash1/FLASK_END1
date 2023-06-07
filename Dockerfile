FROM python:3.8.10-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache --user -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "wsgi.py"] #, "--host=0.0.0.0"
