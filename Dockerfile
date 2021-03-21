FROM rustembedded/cross:aarch64-unknown-linux-gnu-0.2.1

ENV  PKG_CONFIG_LIBDIR=/usr/lib/aarch64-linux-gnu/pkgconfig
RUN dpkg --add-architecture arm64 && \
    apt-get update && \
	apt-get install -y --no-install-recommends apt-utils && \
    apt-get install --assume-yes libssl-dev:arm64 libsqlite3-dev:arm64
ENV PATH=/root/.cargo/bin:$PATH
RUN apt-get install -y pkg-config
