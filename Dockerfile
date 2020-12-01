FROM python:3.8.2

# RUN apt-get update -y && \
#     apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY ./app.py /app/app.py

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]