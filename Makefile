DC="docker-compose -f docker-compose.yml -f docker-compose.consul.yml"

all: down up test

up:
	${DC} up -d

down:
	${DC} down

test:
	curl  -v http://localhost 2>&1 | grep "< HTTP"
	curl -v http://whoami.localhost 2>&1 | grep "< HTTP"

