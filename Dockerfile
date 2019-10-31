FROM guacamole/guacd:latest

ARG BUILD_DEPENDENCIES="              \
        autoconf                      \
        automake                      \
        gcc                           \
        libcairo2-dev                 \
        libjpeg62-turbo-dev           \
        libossp-uuid-dev              \
        libpango1.0-dev               \
        libpulse-dev                  \
        libssh2-1-dev                 \
        libssl-dev                    \
        libtelnet-dev                 \
        libtool                       \
        libvncserver-dev              \
        libwebsockets-dev             \
        libwebp-dev                   \
        make"


# install libreoffice
RUN sed -i 's#deb.debian.org/debian#mirrors.aliyun.com/debian/#g' /etc/apt/sources.list && \
    sed -i 's#security.debian.org#mirrors.aliyun.com#g' /etc/apt/sources.list && \
    apt update && apt-get install -y $BUILD_DEPENDENCIES

