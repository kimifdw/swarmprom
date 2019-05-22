#!/usr/bin/env bash
docker build -t $1 $2
docker login
docker tag $1 registry.cn-hangzhou.aliyuncs.com/four-sugar/$2:$1
docker push registry.cn-hangzhou.aliyuncs.com/four-sugar/$2:$1
