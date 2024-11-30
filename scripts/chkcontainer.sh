x=`sudo docker ps | grep redis | grep -v grep | wc -l`
y=`sudo docker ps -a | grep redis | grep -v grep | wc -l`
if [ $x -ge 1 ];
then
sudo docker stop redis
sudo docker rm redis
elif [ $y -ge 1 ];
then
	sudo docker rm redis
fi

