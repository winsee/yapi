FROM node
MAINTAINER yaohui.tan 1576449691@qq.com

COPY ./config.json /
COPY ./github_host.txt /

RUN cat /github_host.txt >> /etc/hosts \
 && mkdir yapi \
 && cd yapi \
 && git clone https://github.com/YMFE/yapi.git vendors \
 && cp /config.json ./config.json \
 && cd vendors \
 && npm install --production --registry https://registry.npm.taobao.org

WORKDIR /yapi/vendors/

EXPOSE 3000
CMD [ ! -e /yapi/init.lock ] && npm run install-server; node server/app.js
