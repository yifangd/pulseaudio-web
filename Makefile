pre:
	sudo apt install python3-websockets python3-pulsectl -y
run:
	python3 server.py --host 127.0.0.1 --port 8182
open:
	chromium.sh http://localhost:8182

