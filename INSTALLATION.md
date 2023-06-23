## Installation

- Talk to the [@BotFather](https://t.me/botfather) to create a new bot and get its token.
- Install docker or [Docker desktop](https://www.docker.com/products/docker-desktop/)
- Download or clone this repository
- Open your terminal and navigate to `tickergram-bot` folder
- Change in `[Dockerfile](Dockerfile)` file following:

    **Line #15, From:**

    `TELEGRAM_TOKEN`

    To:

    Your telegram token that BotFather gave you.

    **Line #15, From:**

    `YOUR_PASSWORD`

    To:

    Your password that you would like to use when talk to your bot via telegram.

    At the end your line should look like:

    `CMD [ "python", "/home/tickergram-bot/tickergram/tickergram.py", "30342344:AAFWmsadcFsadaasdddasBrWsadY", "-r", "redis", "-p", "123"]`


- Run command in `tickergram-bot` folder, command `docker-compose up -d` or `docker compose up -d`
- Go to your telegram bot and start talking with it
- Enjoy!
