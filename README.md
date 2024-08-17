#### docker-golang-build


1. 需要自己build完成后主动上传到docker hub
2. 仅用于打包golang项目，不用于运行


```shell
# 首先安装docker desktop，然后登录
# brew install --cask docker

# 发现在mac上面打包的image，在ubuntu下面下载后无法正常使用，报 /bin/sh -c ....命令行格式报错的问题
# 在ubuntu本机上打包的，发现是可以用的。盲猜是mac的arm64架构与ubuntu的intel架构不兼容的问题

# 然后自己build一个image，再上传
docker build -t lixianmin/golang-build:latest .

# 登录后才能上传
docker login -u lixianmin
docker push lixianmin/golang-build:latest
```
