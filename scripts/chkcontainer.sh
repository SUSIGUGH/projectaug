x=`sudo docker ps | grep redis | wc -l`
y=`sudo docker ps -a | grep redis | wc -l`
if [ x >=1 ];
then
sudo docker stop redis
sudo docker rm redis
elif [ y >= 1 ];
then
	sudo docker rm redis
fi

