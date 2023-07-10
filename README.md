# youlance-kube
K8s manifest files for __Youlance__ project

## Implementation status
- [x] Auth service
- [x] User service
- [x] Front service
- [x] Feed service
- [x] Post service
- [x] Profile service

## Deployment
You're expected to use _Docker Desktop_ for deploying __Youlance__ locally.

### Deploying nginx-ingress
__nginx-ingress__ is used as ingress in this project and must be deployed before deploying __youlance__.
```
$ helm install nginx-ingress oci://ghcr.io/nginxinc/charts/nginx-ingress --version 0.18.0
```
> __Youlance__ can then be accessed at http://kubernetes.docker.internal

### Deploying youlance
A simple Makefile is provided to ease deploying services
#### Deploying all services
```
$ make
```
> All services are created in the `youalance` namespace.\
> When deploying all services, `youlance` namespace is created for you.
#### Deploying specific service
```
$ make auth
```
> Make sure `youalance` namespace exists if deploying a specific service.
#### Removing specific service
```
$ make -C auth remove
```
#### Removing all services
```
$ make remove
```
> This is equivalent to removing the `youlance` namespace

<!-- ### Exposing front service locally
```
$ make expose
```
> This will expose front service on http://localhost -->