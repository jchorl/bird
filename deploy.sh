set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/bird:latest-arm jchorl/bird:testing || true
docker tag jchorl/bird:latest-amd64 jchorl/bird:testing || true
docker push jchorl/bird:testing
