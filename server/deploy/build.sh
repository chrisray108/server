#!/bin/bash

remote_dir="root@123.207.38.70:/srv"

cd ..
./gradlew distZip
cd deploy

cp ../build/distributions/server.zip ./upload

zip -r upload.zip upload

cp start.srv start.sh

scp upload.zip   $remote_dir
scp start.sh $remote_dir

rm -f start.sh

