FROM ubuntu:latest

RUN apt-get update && apt-get -y install \
  python3.10 \
  python3-pip \
  git

RUN pip3 install PyYAML

COPY feed.py /user/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
