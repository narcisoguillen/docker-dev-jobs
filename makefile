ts    := $(shell /bin/date "+%Y-%m-%d---%H-%M-%S")
token := ''

only:
	sed -i '' 's/timestamp=.*/timestamp=$(ts)/g' $(s)/Dockerfile
	docker-compose build

install:
	sed -i '' 's/<TOKEN>/$(token)/g' idp/Dockerfile
	sed -i '' 's/<TOKEN>/$(token)/g' sp/Dockerfile
	sed -i '' 's/<TOKEN>/$(token)/g' converse/Dockerfile
	docker-machine restart default
	$(shell eval "$(docker-machine env default)")
	docker-compose build --no-cache

update:
	sed -i '' 's/timestamp=.*/timestamp=$(ts)/g' idp/Dockerfile
	sed -i '' 's/timestamp=.*/timestamp=$(ts)/g' converse/Dockerfile
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down

logs:
	docker-compose logs
