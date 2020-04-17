#!/bin/bash
docker tag kev/docker-uptime staging.do:5000/docker-uptime
docker push staging.do:5000/docker-uptime
