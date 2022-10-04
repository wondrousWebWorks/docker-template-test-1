FROM ubuntu:20.04

RUN apt update
RUN apt install -y python3 python3-pip

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt

COPY src/ /app/

EXPOSE 8000
CMD ["python3", "-m", "http.server"]