# eureka-docker

![Docker Automated build](https://img.shields.io/docker/cloud/automated/ygqygq2/eureka-docker.svg) ![Docker Build Status](https://img.shields.io/docker/cloud/build/ygqygq2/eureka-docker.svg) ![Docker Stars](https://img.shields.io/docker/stars/ygqygq2/eureka-docker.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/ygqygq2/eureka-docker.svg)

# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/ygqygq2/eureka-docker/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/ygqygq2/eureka-docker.svg)](http://microbadger.com/images/ygqygq2/eureka-docker "Get your own image badge on microbadger.com")

# Mysql exec sql files.
use mysql client to execute sql files.

## Simplest docker run example

```
docker run --rm -e MYSQL_HOST=10.100.206.6 -e MYSQL_PORT=3306 -e MYSQL_USER=root -e MYSQL_PASSWD=123456 -e MYSQL_DB=test -e SQL_FILES="/tmp/1.sql /tmp/2.sql" -v /tmp/1.sql:/tmp/1.sql -v /tmp/2.sql:/tmp/2.sql ygqygq2/eureka-docker:latest /tmp/1.sql /tmp/2.sql
```

