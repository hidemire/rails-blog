#!/bin/bash -xe 

echo "Deploy"
echo ""

echo "Build docker image"
docker build -t hidemire/ruby-blog:latest .
echo "Done !!!"

echo "Push docker image"
docker push hidemire/ruby-blog:latest
echo "Done !!!"

echo "Helm upgrade"
helm upgrade -i app-ruby ./helm/blog
echo "Done !!!"
