# youlance-kube
K8s manifest files for youlance project

## Implementation status
- [x] Auth service
- [x] User service
- [x] Front service
- [x] Feed service
- [ ] Post service
- [ ] Profile service
- [ ] Search service

## Deployment
A simple Makefile is provided to ease deploying services
### All services
```
$ make
```
> All services are created in the `youalance` namespace.\
> When deploying all services, `youlance` namespace is created for you.

### Specific service
```
$ make auth
```
> Make sure `youalance` namespace exists if deploying a specific service.

### Removing all services
```
$ make remove
```
> This is equivalent to removing the `youlance` namespace

### Exposing front service
```
$ make expose
```
> This will expose front service on `http://127.0.0.1:8080`