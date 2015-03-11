# docker_openmdao

To build: 

```bash
docker build -t iopenmdao .
```

To run:

```bash
docker run -d -p 80:8888 -v $HOME:/home iopenmdao
```

Then point your browser to the docker IP address (e.g. localhost, or found with `boot2docker ip`)
