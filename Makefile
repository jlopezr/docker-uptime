build:
	docker build -t="kev/docker-uptime" .

run:
	ID=$(docker run -d kev/docker-uptime); echo "ext.port: `docker port ${ID} 8082`"
