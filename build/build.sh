#编译后端api
cd ../rate-api-go
make clean
make amd64


# 编译前端vue web app  因为是插件，所以不必编译这个。
# cd ./wxt-vue-rate-1106
# pnpm build
cd ../build
docker build -t registry.cn-shenzhen.aliyuncs.com/oeoli/rate:$1 -f dock-rate-api ../rate-api-go/bin

if [ "$2" = "push" ];then
  docker push registry.cn-shenzhen.aliyuncs.com/oeoli/rate:$1
fi





