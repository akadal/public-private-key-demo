FROM node:8-alpine
EXPOSE 7002
WORKDIR /opt/demo
COPY . /opt/demo
RUN npm install && npm cache clean --force
ENTRYPOINT ["node","./bin/www"]
