FROM python:3.8.8-buster

RUN echo 'deb http://deb.debian.org/debian testing main' >> /etc/apt/sources.list \
    && apt-get update -y \
    && apt-get install -y gcc-10 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install pystan==3.0.0\
    jupyterlab==3.0.12 \
    numpy \
    scipy \
    pandas \
    matplotlib \
    seaborn

WORKDIR /home/work
