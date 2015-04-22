FROM piredtu/openmdao:standalone

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN bash_activate.sh pip install flask

ADD . /install/

EXPOSE 5000
ENV PORT 5000

CMD ["python", "app.py"]