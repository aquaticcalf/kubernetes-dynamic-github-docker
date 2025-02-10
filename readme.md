```
curl http://$(minikube ip):30080/list
```

```
[{"name":"container-manager","replicas":1,"ready_replicas":1,"creation_time":"2025-02-08 16:59:01 +0000 UTC"}]
```

```
curl -X POST http://$(minikube ip):30080/create -d '{"git_repo": "https://github.com/aquaticcalf/play-repo-with-vite-and-dockerfile", "name": "test-one"}'
```
```
Container created successfully
```

```
curl "http://$(minikube ip):30080/delete?name=test-one"
```
```
Container deleted successfully
```

