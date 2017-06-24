# boot-node

sudo docker run -v /home/assassin:/root -t -e RUN_SCRIPT='/root/repositories/steam-traiding/scala/traiding-node/run-main-node-gifts.sh' assassin4791/boot-node

sudo docker run -v /home/assassin:/root -t -e RUN_SCRIPT='/root/repositories/steam-traiding/scala/traiding-node/run-main-node.sh' assassin4791/boot-node

sudo docker run -v /home/assassin:/root -t -e RUN_SCRIPT='/root/repositories/steam-traiding/scala/traiding-node/run-trade-node.sh' assassin4791/boot-node


После установки докера делаем следующую магию, без нее не https запросы из контейнера работать не будут

sudo cp /lib/systemd/system/docker.service /etc/systemd/system/docker.service

sudo nano /etc/systemd/system/docker.service

там модифицируем строчку дописывая в нее --mtu=1450

<tuncated>
ExecStart=/usr/bin/docker daemon -H fd:// --mtu=1450
<truncated>

далее перезапускаем демона

sudo systemctl daemon-reload
sudo service docker restart