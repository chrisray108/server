#!/bin/bash

rm -rf server
unzip upload/server.zip
nohup ./server/bin/hello-world-server