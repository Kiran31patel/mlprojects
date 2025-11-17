From python:3.7-slim-buster
WORKDIR /app
COPY . /app

RUN apt-get update && \
    apt update -y && apt install awscli -y && \
    apt-get install -y build-essential libssl-dev libffi-dev python3-dev && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

CMD ["python3", "app.py"]

