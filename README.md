# fiber-grpc

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

```bash
protoc --proto_path=proto --go_out=proto proto/*.proto --go-grpc_out=proto
```

```proto
syntax = "proto3";

package proto;

option go_package = "./;proto";
```

## Run

```bash
go run server/main.go
go run client/main.go
```

## Endpoints

| Method | URL           | Return value |
| ------ | ------------- | ------------ |
| GET    | "/add/:a/:b"  | a + b        |
| GET    | "/mult/:a/:b" | a \* b       |

## Output

```bash
-> curl http://localhost:3000/add/33445/443234
{"result":"476679"}
-> curl http://localhost:3000/mult/33445/443234
{"result":"14823961130"}
```
