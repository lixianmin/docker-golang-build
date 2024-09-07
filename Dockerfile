# 后续, 记得golang最好不要使用最新版本, 晚一个大版本有利于生态展开
# 执行./build.image.sh打包并上传本镜像

# 升级为1.22, 以支持for loop中的变量
FROM golang:1.22.7-alpine


# remove: build-base (gcc, g++, make)
# remove: gcc
# add: git 打包时需要通过git命令提取项目名和当前提交的版本等信息
RUN apk update && apk upgrade && \
    apk add --no-cache git
