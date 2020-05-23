domain=$1 

PROTO_PATH="$domain"/rpc/"$domain".proto

protoc -I . \
    -I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
    -I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
    --go_out=plugins=grpc,paths=source_relative:. \
    $PROTO_PATH
# grpc gateway
protoc -I . \
    -I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
    -I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway \
    --grpc-gateway_out=logtostderr=true,paths=source_relative:. $PROTO_PATH
#
protoc -I . \
    -I $GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
    --swagger_out=logtostderr=true:. $PROTO_PATH