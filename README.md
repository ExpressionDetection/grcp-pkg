# gRCP Shared Package

## Setup instructions

* Install [poetry](https://python-poetry.org/docs/)

* Run `poetry install` to install dependencies

## How to generate or update gRCP protobuffs

* Generate python gRPC code by running: `python3 -m grpc_tools.protoc  -I./grcppkg/protos --python_out=./grcppkg --grpc_python_out=./grcppkg ./grcppkg/protos/server.proto`
    * Change `server_pb2_grpc.py` to use `from . import server_pb2 as server__pb2`