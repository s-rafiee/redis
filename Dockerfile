FROM python:3.10.5-slim

ENV DockerHOME=/app

RUN mkdir -p $DockerHOME

WORKDIR $DockerHOME

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


COPY requirements.txt $DockerHOME

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


COPY ./core $DockerHOME

CMD ['sudo', 'chmod', '-R', '777', '.']
