# 2025-02-16 测试了一个gemini 2.0 pro，它最新的数据竟然只到2023-10-26，还是golang 1.21，因此不着急升级新的版本，旧的版本在保证够用的前提下可以从LLM中问到完整的知识，这对AI编程很重要
# 记得golang不要使用最新版本, 晚一个大版本有利于生态展开, 特别是IDE支持。
#
# 执行./build.image.sh打包并上传本镜像

# 2024-04-18 升级为1.22, 以支持for loop中的变量
FROM golang:1.24.6-alpine


# remove: build-base (gcc, g++, make)
# remove: gcc
# add: git 打包时需要通过git命令提取项目名和当前提交的版本等信息
RUN apk update && apk upgrade && \
    apk add --no-cache git

# 修改时区为东8区
ENV TZ="Asia/Shanghai"
RUN apk add --no-cache tzdata
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN apk add bash
#CMD ["tail", "-f", "/dev/null"]
