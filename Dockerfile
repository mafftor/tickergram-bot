FROM python:3.8-slim-buster

RUN apt-get update && \
    apt-get install -y locales && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales

WORKDIR .

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/tickergram-bot

CMD [ "python", "/home/tickergram-bot/tickergram/tickergram.py", "TELEGRAM_TOKEN", "-r", "redis", "-p", "YOUR_PASSWORD"]
