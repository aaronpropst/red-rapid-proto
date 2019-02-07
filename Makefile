



init: 
	docker-compose run red npm install


run:
	docker-compose up -d

module:
	docker-compose run util /util/stubout.sh $(name) && \
	docker-compose run red ln -s ../custom_modules/$(name) ./node_modules/$(name) && \
	docker-compose restart red