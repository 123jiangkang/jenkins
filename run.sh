#! /bin/sh
#接收外部参数

image=`sudo docker images | grep -w $1 | head -n 1 | awk '{print $1}'`
dockerPs=`sudo docker ps | grep -w $1 | head -n 1 | awk '{print $1}'`
dockerPsAll=`sudo docker ps -a | grep -w $1 | head -n 1 | awk '{print $1}'`

echo "image : $image"
echo "dockerPs : $dockerPs"
echo "dockerPsAll : $dockerPsAll"

if [ "$dockerPs" != "" ];then
   sudo docker stop $dockerPs
   if [ $? -eq 0 ];then
      echo "$dockerPs 容器已停止"
   fi
fi

if [ "$dockerPaAll" != "" ];then
   sudo docker rm $dockerPaAll
   if [ $? -eq 0 ];then
      echo "$dockerPs 容器已删除"
   fi
fi

if [ "$image" != "" ] ;then
   sudo docker rmi $image
   if [ $? -eq 0 ];then
      echo "$image 镜像已删除"
   fi
fi


#启动容器
sudo docker run -itd --name $1 -p 31002:31002 $image

if [ $? -eq 0 ];then
      echo "$1 容器已启动"
fi