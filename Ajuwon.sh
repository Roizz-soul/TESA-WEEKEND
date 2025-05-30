#!/bin/bash

curl https://jsonplaceholder.typicode.com/posts

curl -X POST -H "Content-Type: application/json; charset=UTF-8" -d '{"title": "Oreoluwa", "body": "Ajuwon", "userId": 23}' https://jsonplaceholder.typicode.com/posts

curl -X PUT -H "Content-Type: application/json; charset=UTF-8" -d '{"title": "Oreoluwa", "body": "Ajuwon", "userId": 23}' https://jsonplaceholder.typicode.com/posts/1

curl -X PATCH -H "Content-Type: application/json; charset=UTF-8" -d '{"title": "Oreoluwa", "body": "Ajuwon", "userId": 23}' https://jsonplaceholder.typicode.com/posts/2

curl -X DELETE -H "Content-Type: application/json; charset=UTF-8" -d '{"title": "Oreoluwa", "body": "Ajuwon", "userId": 23}' https://jsonplaceholder.typicode.com/posts/2