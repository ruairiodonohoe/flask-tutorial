FROM python:3.13-slim

WORKDIR /flaskr

COPY requirements.txt requirements.txt

RUN python -m pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "flask", "--app", "flaskr", "run", "--debug", "--host=0.0.0.0"]