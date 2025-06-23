# 企业微信API代理 Docker

[![Build](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/build.yml/badge.svg)](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/build.yml) [![Docker readme update](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/readme_update.yml/badge.svg)](https://github.com/DDS-Derek/wxchat-Docker/actions/workflows/readme_update.yml)

## 快速部署

### Docker 命令
```bash
docker run -d \
    --name wechatapi \
    --restart=always \
    -p 80:80 \
    ddsderek/wxchat:latest
```

### Docker Compose
```yaml
version: '3.3'
services:
    wechatapi:
        container_name: wechatapi
        restart: always
        ports:
            - '80:80'
        image: 'ddsderek/wxchat:latest'
```

### 本地构建运行
```bash
# 克隆仓库
git clone https://github.com/DDS-Derek/wxchat-Docker.git
cd wxchat-Docker

# 构建镜像
docker build -t wechatapi:latest .

# 运行容器
docker run -d --name wechatapi --restart=always -p 80:80 wechatapi:latest

# 或者使用Docker Compose
# docker-compose up -d
```

## 功能说明

本项目提供企业微信API的代理服务，支持所有企业微信API路径。主要用于解决以下问题：

1. 网络访问限制问题
2. 跨域请求问题
3. 本地开发测试需求

## 支持的API

本代理使用通用规则支持**所有**企业微信API，主要包括：

- 所有 `/cgi-bin/` 开头的API
- 企业支付相关API (`/mmpaymkttransfers/`)

常用API类别：
- 身份验证
- 消息推送
- 成员管理
- 部门管理
- 标签管理
- 菜单管理
- 素材管理
- 应用管理
- 外部联系人
- 通讯录管理
- 会话内容存档
- 群机器人
- 企业支付

## 使用方法

将您应用中的企业微信API请求地址从 `https://qyapi.weixin.qq.com` 修改为当前代理服务器地址即可。

例如，原始请求地址：
```
https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=ID&corpsecret=SECRET
```

修改为：
```
http://your-server-ip/cgi-bin/gettoken?corpid=ID&corpsecret=SECRET
```

## 注意事项

- 本代理仅转发请求，不存储任何数据
- 请确保您的应用正确处理API的鉴权和安全
- 推荐在内网环境使用，如需公网访问请添加适当的安全措施