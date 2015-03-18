FROM ipython/scipystack

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN apt-get update && apt-get install -y gfortran

ENV OMV 0.12.0

ENV USE_HTTP 1
ENV INSTALLDIR /openmdao
ENV PEM_FILE /key.pem
ENV USE_HTTP 1
ENV OPENMDAODIR $INSTALLDIR/openmdao-$OMV
ENV PASSWORD Dont make this your default
ENV ACTIVATE $OPENMDAODIR/bin/activate
ENV PEM_FILE $INSTALLDIR/key.pem
EXPOSE 8888

RUN mkdir $INSTALLDIR

WORKDIR $INSTALLDIR

ADD go-openmdao-$OMV.py $INSTALLDIR/go-openmdao-$OMV.py
ADD requirements.txt $INSTALLDIR/requirements.txt
ADD fix_dependencies.sh $INSTALLDIR/fix_dependencies.sh
ADD omdao /bin/omdao

# omdao runs a bash command in openmdao virtual environment
RUN chmod a+x /bin/omdao

# Install OpenMDAO
RUN python2.7 $INSTALLDIR/go-openmdao-$OMV.py

# We need the latest version of tornado and ipython installed
RUN chmod u+x $INSTALLDIR/fix_dependencies.sh
RUN /bin/omdao $INSTALLDIR/fix_dependencies.sh

ADD notebook.sh $INSTALLDIR/notebook.sh
RUN chmod a+x $INSTALLDIR/notebook.sh

# Making sure that the user don't have root access
RUN useradd -ms /bin/bash openmdao
RUN chown openmdao -R $INSTALLDIR
USER openmdao

# Default command runs the notebook with in openmdao virtualenv
CMD /bin/omdao $INSTALLDIR/notebook.sh
