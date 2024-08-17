docker build --platform linux/amd64 -t lixianmin/golang-build:latest .

# if returns: denied: requested access to the resource is denied
# you need to run: docker login 
docker push lixianmin/golang-build:latest

