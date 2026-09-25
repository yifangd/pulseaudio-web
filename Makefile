pre:
	sudo apt install python3-websockets python3-pulsectl -y

#H=0.0.0.0
H=127.0.0.1
P=8182
Q=8867

run:
	python3 server.py --host $H --port $P
open:
	xdg-open http://localhost:$P

i:
	sudo rsync -avx pulseweb.sh /y/bin/
	sudo rsync -avx pulse.conf /etc/caddy/sites.d/
sd:
	rsync -avx pulseweb.service ~/.config/systemd/user/
sr:
	systemctl daemon-reload --user
status ss:
	systemctl status pulseweb --user
restart:
	systemctl restart pulseweb --user
r:
	/y/bin/pulseweb.sh
