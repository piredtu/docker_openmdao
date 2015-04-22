FROM rethore/openmdao:0.10.3.2

MAINTAINER Pierre-Elouan Rethore <pire@dtu.dk>

RUN bash_activate.sh pip install flask

ADD . /install/

EXPOSE 5000
ENV PORT 5000

CMD ["python", "app.py"]