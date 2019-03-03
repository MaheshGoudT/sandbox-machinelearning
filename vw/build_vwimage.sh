# docker build -t vwcentos:8.6 -f docker/CentosDockerfile . #Has cmake issues

docker build -t vwalpine:8.6 -f docker/AlpineDockerfile .
docker run --rm -it --name vwalpinecontainer -p 5000:80 -v $(pwd):/code vwalpine:8.6 /bin/bash
