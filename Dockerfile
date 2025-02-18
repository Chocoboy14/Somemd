FROM node:23.8.0

# RUN apt-get update && \
#  apt-get install -y \
#  ffmpeg \
#  imagemagick \
#  webp && \
#  apt-get upgrade -y && \
#  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install && npm install -g qrcode-terminal pm2

COPY . .

EXPOSE 5000


CMD ["npm", "start"]
