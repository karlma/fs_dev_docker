FROM karlma/ubuntu-sshd:20.04

MAINTAINER Karl Ma
ENV REFRESHED_AT 2023-11-03

RUN apt-get update && apt-get install -y \
	autoconf \
	cmake \
	curl \
	g++ \
	libcurl4-openssl-dev \
	libedit-dev \
	libexpat1-dev \
	libjpeg-dev \
	libldns-dev \
	liblua5.2-dev \
	libmariadb-dev \
	libmp3lame-dev \
	libmpg123-dev \
	libncurses5-dev \
	libopus-dev \
	libpcap-dev \
	libpcre3 \
	libpcre3-dev \
	libsctp-dev \
	libshout3-dev \
	libsndfile1-dev \
	libspeex-dev \
	libspeexdsp-dev \
	libsqlite3-0 \
	libsqlite3-dev \
	libssl-dev \
	libtiff-dev \
	libtolua-dev \
	libtool \
	libtool-bin \
	lua5.2 \
	make \
	mariadb-client \
	python3-dev \
	telnet \
	unixodbc-dev \
	uuid \
	uuid-dev \
	yasm \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*
# video
        # ?libavformat-dev \
        # libx264-dev \ # for compile ffmpeg

VOLUME /usr/local/src/freeswitch
VOLUME /usr/local/freeswitch

WORKDIR /usr/local/src/freeswitch

