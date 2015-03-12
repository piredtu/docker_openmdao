FROM ipython/scipystack

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN apt-get update && apt-get install -y gfortran

RUN mkdir /openmdao

ENV USE_HTTP 1
ENV OPENMDAODIR /openmdao/openmdao-0.10.3.2

WORKDIR /openmdao
ADD go-openmdao-0.10.3.2.py /openmdao/go-openmdao-0.10.3.2.py

RUN python2.7 /openmdao/go-openmdao-0.10.3.2.py
RUN rm -rf /usr/local/lib/python2.7/dist-packages/ipython*
RUN bash -c "source $OPENMDAODIR/bin/activate; pip install ipython; pip install tornado --upgrade"

WORKDIR /

ADD notebook.sh /
RUN chmod u+x /notebook.sh

CMD ["/notebook.sh"]
