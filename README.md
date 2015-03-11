Dockerfile to build the container [piredtu/openmdao:0.10.3.2](http:/hub.docker.com/u/piredtu/openmdao)

To build: 

```bash
docker build -t iopenmdao .
```

To run:

```bash
docker run -d -p 80:8888 -v $HOME:/home iopenmdao
```

Then point your browser to the docker IP address (e.g. localhost, or found with `boot2docker ip`)
