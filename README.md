# gRCP Shared Package

## Setup instructions

* Install [poetry](https://python-poetry.org/docs/)

* Run `poetry install` to install dependencies

## How to generate or update gRCP protobuffs

* Install `grpcio-tools` globally by running `python -m pip install grpcio-tools`

* Generate python gRPC code by running: `python -m grpc_tools.protoc  -I.\grcpPkg\protos --python_out=.\grcpPkg --grpc_python_out=.\grcpPkg .\grcpPkg\protos\server.proto`