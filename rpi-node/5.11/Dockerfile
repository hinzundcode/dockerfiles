FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
	ca-certificates \
	git \
	wget \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN set -xe \
	&& wget -q https://nodejs.org/dist/v5.11.0/node-v5.11.0-linux-armv7l.tar.xz \
	&& tar -xvf node-v5.11.0-linux-armv7l.tar.xz \
	&& cp -R node-v5.11.0-linux-armv7l/bin/ node-v5.11.0-linux-armv7l/include/ node-v5.11.0-linux-armv7l/lib/ node-v5.11.0-linux-armv7l/share/ /usr/local/ \
	&& rm -r node-v5.11.0-linux-armv7l \
	&& rm -r node-v5.11.0-linux-armv7l.tar.xz

CMD ["node"]
