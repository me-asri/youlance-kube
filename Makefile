ifeq ($(OS),Windows_NT)
	SHELL := cmd
endif

.PHONY: all ns auth user feed front post remove expose status status-pods

all: ns auth user feed front post

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

post:
	@echo [*] Deploying post service
	make -C post

remove:
	@echo [*] Removing youlance services
	kubectl delete ns youlance

expose:
	@echo [*] Exposing front service
	kubectl -n youlance port-forward deploy/front 80:80

status:
	kubectl -n youlance get deploy

status-pods:
	kubectl -n youlance get pods