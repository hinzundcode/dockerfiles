FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
	ca-certificates \
	git \
	wget \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN set -xe \
	&& wget -q https://nodejs.org/dist/v6.0.0/node-v6.0.0-linux-armv7l.tar.xz \
	&& tar -xvf node-v6.0.0-linux-armv7l.tar.xz \
	&& cp -R node-v6.0.0-linux-armv7l/bin/ node-v6.0.0-linux-armv7l/include/ node-v6.0.0-linux-armv7l/lib/ node-v6.0.0-linux-armv7l/share/ /usr/local/ \
	&& rm -r node-v6.0.0-linux-armv7l \
	&& rm node-v6.0.0-linux-armv7l.tar.xz

CMD ["node"]
