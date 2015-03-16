FROM ipython/scipystack

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN apt-get update && apt-get install -y gfortran

ENV OMV 0.10.3.2

ENV USE_HTTP 1
ENV INSTALLDIR /openmdao
ENV PEM_FILE /key.pem
ENV USE_HTTP 1
ENV OPENMDAODIR $INSTALLDIR/openmdao-$OMV
ENV PASSWORD Dont make this your default
ENV ACTIVATE $OPENMDAODIR/bin/activate
EXPOSE 8888

RUN mkdir $INSTALLDIR


WORKDIR $INSTALLDIR

ADD go-openmdao-$OMV.py $INSTALLDIR/go-openmdao-$OMV.py
ADD requirements.txt $INSTALLDIR/requirements.txt
ADD fix_dependencies.sh $INSTALLDIR/fix_dependencies.sh
ADD omdao /bin/omdao

RUN chmod u+x /bin/omdao

# Install OpenMDAO
RUN python2.7 $INSTALLDIR/go-openmdao-$OMV.py

# We need the latest version of tornado and ipython installed
RUN chmod u+x $INSTALLDIR/fix_dependencies.sh
RUN /bin/omdao $INSTALLDIR/fix_dependencies.sh

ADD notebook.sh /
RUN chmod u+x /notebook.sh

CMD /bin/omdao /notebook.sh
