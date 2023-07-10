profile:
	kubectl apply -f postgres.yml -f migration.yml
	@echo [*] Waiting for migration job to finish
	kubectl wait -n youlance --for=condition=complete --timeout=120s job/profile-db-migration
	kubectl apply -f profile.yml

remove:
	kubectl delete -f postgres.yml -f profile.yml -f migration.yml