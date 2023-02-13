in:
	docker exec -ti compiler /bin/bash
up:
	docker-compose up
down:
	docker-compose down
reboot:
	docker-compose down
	docker-compose up
go_test:
	docker exec -ti compiler bash -c "go fmt ./..."
	docker exec -ti compiler bash -c "go vet ./..."
	docker exec -ti compiler bash -c "go test -v ./..."