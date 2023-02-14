in:
	docker exec -ti monkey /bin/bash
up:
	docker-compose up
down:
	docker-compose down
reboot:
	docker-compose down
	docker-compose up
go_test:
	docker exec -ti monkey bash -c "go fmt ./..."
	docker exec -ti monkey bash -c "go vet ./..."
	docker exec -ti monkey bash -c "go test -v ./..."