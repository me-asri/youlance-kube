.PHONY: all

all:
	kubectl apply -f postgres.yml -f migration.yml
	@echo [*] Waiting for migration job to finish
	kubectl wait -n youlance --for=condition=complete job/post-db-migration
	kubectl apply -f post.yml

remove:
	kubectl delete -f postgres.yml -f migration.yml -f post.yml