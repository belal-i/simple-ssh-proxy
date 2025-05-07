### simple-ssh-proxy

This is a simple SSH proxy container. Deploy it into your Docker network to
forward ports of hidden services, such as database.

#### Requirements

Docker

#### Installing

For now, clone the Git repository and build the image locally,
or if you are using Docker Compose, you can set the `build` attribute
to the repository's URL (see below). I will try to put this on Docker Hub soon,
then it will be easier.

#### Usage

##### CLI
```bash
docker run -d \
    -p 2222:22 \
    -v /path/to/host/.ssh/:/home/proxy_user/.ssh/
    simple-ssh-proxy
```

##### Docker Compose

```yaml
services:
  # ...
  my_proxy_service:
    build: https://github.com/saint-hilaire/simple-ssh-proxy.git
    ports:
      - "2222:22"
    volumes:
      - "/path/to/host/.ssh/:/home/proxy_user/.ssh/"
```
