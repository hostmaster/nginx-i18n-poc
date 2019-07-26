
IMAGE := nginx

.PHONY: all
.DEFAULT_GOAL := run

run:
	docker run --rm -p 127.0.0.1:80:80/tcp \
		-v $$PWD/html:/usr/share/nginx/html \
		-v $$PWD/site.conf:/etc/nginx/conf.d/default.conf \
		-it $(IMAGE)

shell:
		docker run --rm -p 127.0.0.1:80:80/tcp \
		-v $$PWD/html:/usr/share/nginx/html \
		-v $$PWD/site.conf:/etc/nginx/conf.d/default.conf \
		-it $(IMAGE) bash