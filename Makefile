



run:
	docker-compose up

module:
	docker-compose run util /util/stubout.sh $(name) && docker-compose restart red