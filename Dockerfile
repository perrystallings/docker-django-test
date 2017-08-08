FROM perrystallings/ubuntu-python3.5.2:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    memcached \
    postgresql \
    postgresql-contrib && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/redis && \
    mkdir /var/redis && \
    mkdir /var/log/redis
