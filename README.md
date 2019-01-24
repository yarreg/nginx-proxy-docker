# nginx proxy 
A simple container that proxies requests to an external host.

Examples:
```
docker run -d --name=proxy -p 8080:80 -e HOST=example.com yarreg/nginx-proxy-docker
```
Now all requests to ```http://localhost:8080``` go to ```http://example.com```
  
&nbsp;
&nbsp;

```
docker run -d --name=proxy -p 8080:80 -e HOST=example.com -e PATH_PREFIX=/api/v1.0/ yarreg/nginx-proxy-docker
```
Now all requests to ```http://localhost:8080/api/v1.0/ping``` go to ```http://example.com/ping```

&nbsp;
# Docker Hub
https://hub.docker.com/r/yarreg/nginx-proxy-docker/