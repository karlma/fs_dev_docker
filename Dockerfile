FROM docker.flyudesk.com:9876/matiancai/ubuntu_sshd:18.04

MAINTAINER Karl Ma
ENV REFRESHED_AT 2019-07-30

# Change sourcelist to aliyun
#COPY sources.list /etc/apt/

# gcc for cgo
RUN apt-get update && apt-get install -y \
		autoconf \
		make \
		libtool \
		libtool-bin \
		g++ \
		unixodbc-dev \
		zlib1g-dev \
		libjpeg-dev \
		libcurl4-openssl-dev \
		libncurses5-dev \
		libexpat1-dev \
		uuid \
		uuid-dev \
		libsqlite3-0 \
		libsqlite3-dev \
		libpcre3 \
		libpcre3-dev \
		libspeex-dev \
		libspeexdsp-dev \
		libldns-dev \
		libedit-dev \
		yasm \
		lua5.2 \
		libtolua-dev \
		libopus-dev \
		libsndfile1-dev \
		libshout3-dev \
		libmpg123-dev \
		libmp3lame-dev \
	    && rm -rf /var/lib/apt/lists/*

VOLUME /usr/local/src/freeswitch
VOLUME /usr/local/freeswitch

WORKDIR /usr/local/src/freeswitch

