FROM python:latest

WORKDIR /app

COPY .venv /app

RUN apt update
RUN apt install gettext -y

RUN pip install -r req.txt


EXPOSE 8880

ENTRYPOINT ["sh", "entrypoint.sh"]

# postgres uchun
#FROM python:3.12-alpine
#
#
#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1
#
#WORKDIR /code
#
#COPY req.txt /code/
#RUN pip install --upgrade pip && pip install -r req.txt
#
#COPY . /code/
#
#COPY ./entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#
#ENTRYPOINT ["/entrypoint.sh"]