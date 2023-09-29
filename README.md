# MoviePilot 微信转发代理 Docker

[![Build](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/build.yml/badge.svg)](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/build.yml) [![Docker readme update](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/readme_update.yml/badge.svg)](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/readme_update.yml)

```bash
docker run -d \
    --name wxchat \
    --restart=always \
    -p 80:80 \
    ddsderek/wxchat:latest
```

```yaml
version: '3.3'
services:
    wxchat:
        container_name: wxchat
        restart: always
        ports:
            - '80:80'
        image: 'ddsderek/wxchat:latest'
```