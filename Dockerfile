FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
# COPY requirements.txt requirements.txt
# RUN python -m pip install -r requirements.txt
# COPY ./app ./app
# CMD 
# FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

EXPOSE 80

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
