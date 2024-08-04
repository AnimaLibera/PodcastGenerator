FROM ubuntu:latest

RUN apt-get update && apt-get -y install \
  python3-full \
  python3-pip \
  git

RUN pipx install PyYAML

COPY feed.py /user/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
