FROM debian:jessie

MAINTAINER Amit Daniel <amitdaniel1986@gmail.com>

ADD ./ /app/
WORKDIR /app

RUN apt-get update && \
    apt-get install -y python python-pip cron && \
    rm -rf /var/lib/apt/lists/* && \
    pip install s3cmd && \
    chmod +x start.sh && \
    chmod +x sync.sh


ENTRYPOINT ["/app/start.sh"]
CMD [""]
