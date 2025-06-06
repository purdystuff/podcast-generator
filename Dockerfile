FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

RUN apt-get update && apt-get install -y python3-pip python3-setuptools python3-wheel
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install PyYAML


COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]