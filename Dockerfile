FROM java:8-jre as builder

RUN apt-get update

RUN apt-get install -y \
    libxslt-dev \
    python3-dev \
    python3-gevent python3-cffi \
    python3-pip && \
    rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/*

RUN pip3 install --upgrade pip && \
    pip install six==1.10.0 && \
    pip install bzt

