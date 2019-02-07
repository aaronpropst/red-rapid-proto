



run:
	docker-compose up

module:
	docker-compose run util /util/stubout.sh $(name) && \
	docker-compose build red && \
	docker-compose up -d red