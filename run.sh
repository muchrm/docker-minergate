#!/bin/bash
docker container rm -f miner
docker build -f Dockerfile -t muchrm/minergate:latest .
docker run --name miner -d muchrm/minergate:latest