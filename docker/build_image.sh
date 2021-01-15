#!/usr/bin/env bash
#tar --exclude '../../sample-app/.git' --exclude '../../sample-app/.idea' --exclude '../../sample-app/docker' --exclude '../../sample-app/venv' -czf /sample-app.tar.gz ../../sample-app
tar -czf /sample-app.tar.gz ../../sample-app

docker build --rm -t mydev/sample-app .

rm -f ./sample-app.tar.gz
