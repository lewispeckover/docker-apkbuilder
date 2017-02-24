FROM lewispeckover/base:3.5
COPY entrypoint.sh /
ENTRYPOINT /entrypoint.sh
WORKDIR /build
RUN 	apk add --no-cache alpine-sdk \
	&& adduser -HDh /build builder \
	&& echo "builder  ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
	&& addgroup builder abuild \
	&& mkdir -p /build /var/cache/distfiles \
	&& chgrp abuild /build /var/cache/distfiles \
	&& chmod g+w /build /var/cache/distfiles
