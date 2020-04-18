set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag birdbuild-armv71:latest jchorl/bird:latest
docker push jchorl/bird:latest
