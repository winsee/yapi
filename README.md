# 使用说明

## 启动

1. 通过docker-compose一键启动

```BASH
$ docker-compose up -d --build
```

2. 访问路径以及账号和密码

```
http://localhost:3000/
超级管理员账号：admin@admin.com
密码：ymfe.org
```

3. 没有设置自启，如果电脑重启需要手动启动容器

## 文件说明

- **config.json** yapi配置文件，主要是超级账号，mongo相关信息
- **github_host.txt** 主要是因为github clone源代码速度太慢，通过修改hosts来提速下载
- **Dockerfile** 制作yapi最新镜像的Dockerfile
- **docker-compose.yml** 包含了mongo db，一键启动YAPI环境

>  **Note:** mongo db不要配账号密码，不然yapi会报授权失败,起不起来（原谅我我不懂mongo）

## 附

yapi官方github地址 <https://github.com/YMFE/yapi>