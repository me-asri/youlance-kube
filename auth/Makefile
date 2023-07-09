.PHONY: all remove

all:
	kubectl apply -f redis.yml -f auth.yml

remove:
	kubectl delete -f redis.yml -f auth.yml