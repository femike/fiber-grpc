BINARY_NAME=main.out

run:
	go run ...

go build:
	go build -o ${BINARY_NAME} main.go

deps:
	go get github.com/gofiber/fiber/v2
	go get github.com/amalshaji/fiber-grpc/proto
	go get -u google.golang.org/grpc