all: down up sleep test

up:
	docker-compose up -d

down:
	docker-compose down

sleep:
	sleep 20s

test:
	curl -v http://localhost 2>&1 | grep "< HTTP"
	curl -v http://whoami.localhost 2>&1 | grep "< HTTP"

