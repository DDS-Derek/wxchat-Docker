# 微信转发代理 Docker

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