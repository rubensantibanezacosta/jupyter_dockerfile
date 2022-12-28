FROM python:3.12.0a3-bullseye

RUN apt update && apt upgrade -y
RUN apt install python3-pip python3-dev
RUN -H pip3 install --upgrade pip
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir /proyects && chmod 777 /proyects
WORKDIR /proyects


CMD ["jupyter", "notebook"]
