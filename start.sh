#!/bin/bash
app="flaskr.test"

docker stop ${app} 2>/dev/null
docker rm ${app} 2>/dev/null

docker build -t ${app} .

#docker run -d -p 5000:5000 \
#  --name=${app} \
#  -v $PWD:/flaskr ${app}

docker run -d -p 5000:5000 --name=${app} ${app}
