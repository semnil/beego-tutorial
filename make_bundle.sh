#!/bin/sh

cd `dirname $0`
cd quickstart

cp -f ../ebfiles/Dockerfile .
cp -f ../ebfiles/Dockerrun.aws.json .

rm -rf ../bundle.zip
zip -r ../bundle.zip *
