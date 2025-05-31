#!/bin/bash

method=$1
url=$2

methods="GET POST PUT PATCH DELETE"


if [[ " $methods " == *" $method "* ]]; then
    if [ $method = "GET" ]; then
        curl -X GET https://jsonplaceholder.typicode.com/posts/1

    elif  [ $method = "PUT" ]; then
        curl -X POST https://jsonplaceholder.typicode.com/posts/1 -H "Content-Type: application/json" \
        -d '{"title": "Hello"}'

    elif [ $method = "PATCH" ]; then
        curl -X POST https://jsonplaceholder.typicode.com/posts/1 -H "Content-Type: application/json" \
        -d '{"title": "Hello", "body":"world", "userId": 100}'

    elif [ $method = "DELETE" ]; then
        curl -X DELETE https://jsonplaceholder.typicode.com/posts/1

    elif [ $method = "POST" ]; then
        curl -X POST https://jsonplaceholder.typicode.com/posts -H "Content-Type: application/json" \
        -d '{"title": "Hello", "body":"world", "userId": 100}'
    fi

else
    curl -X GET https://jsonplaceholder.typicode.com/posts
fi
