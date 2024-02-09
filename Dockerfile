FROM debian:bookworm-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl git wget
RUN mkdir /app && ln -s /app /root/.node-red
RUN curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered -o nodered.sh && bash nodered.sh --confirm-root --confirm-install --skip-pi --no-init && rm nodered.sh
RUN apt-get clean

EXPOSE 1880

CMD [ "node-red" ]