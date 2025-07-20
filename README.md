## simple-ssh-proxy

This is a simple SSH proxy container. Deploy it into your Docker network to
forward ports of hidden services, such as database.

### Requirements

Docker

### Usage

#### CLI
```bash
docker run -d \
    -p 2222:22 \
    -v /path/to/host/.ssh/:/home/proxy_user/.ssh/
    belalibrahim/simple-ssh-proxy:latest
```

#### Docker Compose

```yaml
services:
  # ...
  my_proxy_service:
    image: belalibrahim/simple-ssh-proxy:latest
    ports:
      - "2222:22"
    volumes:
      - "/path/to/host/.ssh/:/home/proxy_user/.ssh/"
```

#### Setup

For now, some manual setup is required on the server before you can use it:

* The host volume that gets mounted into the container's
  `/home/proxy_user/.ssh/` needs to have a valid `authorized_keys` file.
* In the container, make sure that `/home/proxy_user/.ssh/` belongs
  to `proxy_user:proxy_user`.
