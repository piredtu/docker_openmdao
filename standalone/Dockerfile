FROM ubuntu:14.10

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN apt-get update && apt-get install -y language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales


RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    gcc \
    git \
    python \
    python-dev \
    python-pip \    
    gfortran \
    curl \
    wget \
    python-numpy \
    python-scipy

ENV OMDAOVER 0.10.3.2

RUN mkdir /install
WORKDIR /install
ENV OPENMDAO_DIR /install/openmdao-$OMDAOVER
ENV ACTIVATE $OPENMDAO_DIR/bin/activate

RUN curl http://openmdao.org/releases/$OMDAOVER/go-openmdao-$OMDAOVER.py | python2

RUN apt-get -y autoremove && apt-get -y autoclean

ADD bash_activate.sh /bin/
RUN chmod a+x /bin/bash_activate.sh
ENTRYPOINT ["/bin/bash_activate.sh"]
CMD ["python2"]
