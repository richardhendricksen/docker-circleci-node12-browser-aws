FROM circleci/node:12-browsers

USER root

RUN apt-get -qq update && apt-get -y -qq --no-install-recommends install \
    python3-pip \
    python3-setuptools \
    && pip3 install --upgrade pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install --upgrade awscli

USER circleci
