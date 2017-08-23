#!/bin/bash

echo "Remove proxy container and image"
docker stop proxy
docker rm proxy
docker rmi nginxreverseproxy_proxy

echo "Remove api container and image"
docker stop api
docker rm api
docker rmi nginxreverseproxy_api

echo "Remove adm container and image"
docker stop adm
docker rm adm
docker rmi nginxreverseproxy_adm

echo "Remove web container and image"
docker stop web
docker rm web
docker rmi nginxreverseproxy_web

echo "Run docker-compose"
docker-compose -f docker-compose.yml build --no-cache --force-rm proxy
docker-compose -f docker-compose.yml up -d --force-recreate --remove-orphans proxy
