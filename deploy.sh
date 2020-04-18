set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/bird:latest-arm jchorl/bird:latest
docker push jchorl/bird:latest
