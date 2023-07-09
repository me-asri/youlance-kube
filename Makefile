ifeq ($(OS),Windows_NT)
	SHELL := cmd
endif

.PHONY: all ns auth user feed front remove status status-pods

all: ns auth user feed front

ns:
	@echo Creating youlance namespace
	kubectl create ns youlance

auth:
	@echo [*] Deploying auth service
	make -C auth

user:
	@echo [*] Deploying user service
	make -C user

feed:
	@echo [*] Deploying feed service
	make -C feed

front:
	@echo [*] Deploying front service
	make -C front

remove:
	@echo [*] Removing youlance services
	kubectl delete ns youlance

status:
	kubectl -n youlance get deploy

status-pods:
	kubectl -n youlance get pods