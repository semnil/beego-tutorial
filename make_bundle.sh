#!/bin/sh

cd `dirname $0`
cd quickstart

cp -f ../contents/c1/Dockerfile .
cp -f ../contents/c1/Dockerrun.aws.json .

rm -rf ../bundle.zip
zip -r ../bundle.zip *

rm -f Dockerfile .
rm -f Dockerrun.aws.json .
