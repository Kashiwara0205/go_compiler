in:
	docker exec -ti go_compiler_app /bin/bash
up:
	docker-compose up
down:
	docker-compose down
reboot:
	docker-compose down
	docker-compose up
go_test:
	docker exec -ti go_compiler_app bash -c "go fmt ./..."
	docker exec -ti go_compiler_app bash -c "go vet ./..."
	docker exec -ti go_compiler_app bash -c "go test -v ./..."