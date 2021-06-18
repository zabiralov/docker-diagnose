LABEL authors="Alexander Zabiralov <zabiralov@gmail.com>"

FROM alpine:3.14

COPY rootfs/ /

ENV MC_SKIN   darkfar
ENV MANWIDTH  80


RUN apk add --no-cache \
		bind-tools \
		curl \
		dateutils \
		diffutils \
		elinks \
		gawk \
		git \
		iputils \
		man-db \
		man-pages \
		mc \
		mini_httpd \
		mtr \
		mysql-client \
		netcat-openbsd \
		nmap \
		openssh \
		postgresql-client \
		pssh \
		pwgen \
		socat \
		tcpdump \
		tmux \
		wget \


ENTRYPOINT [ "/bin/sleep", "inf" ]
