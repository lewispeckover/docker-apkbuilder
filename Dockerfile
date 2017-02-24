FROM lewispeckover/base:3.5
RUN 	apk add --no-cache alpine-sdk \
	&& adduser -Hdh /build builder \
	&& echo "builder  ALL=(ALL) ALL" >> /etc/sudoers \
	&& addgroup builder abuild \
	&& mkdir -p /var/cache/distfiles \
	&& chgrp abuild /var/cache/distfiles \
	&& chmod g+w /var/cache/distfiles
