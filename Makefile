build:
	docker build -t="kev/docker-uptime" .

run:
	ID=$(docker run -d kev/docker-uptime); echo "ext.port: `docker port ${ID} 8082`"

upload: build
	docker tag kev/docker-uptime staging.do:5000/docker-uptime
	docker push staging.do:5000/docker-uptime
