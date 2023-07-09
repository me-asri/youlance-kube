.PHONY: all remove

all:
	kubectl apply -f postgres.yml -f user.yml

remove:
	kubectl delete -f postgres.yml -f user.yml