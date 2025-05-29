#!/bin/bash

BASE_URL="https://jsonplaceholder.typicode.com"

# GET request
echo "GET /posts/1"
curl "$BASE_URL/posts/1"
echo -e "\n"

# POST request
echo "POST /posts"
curl -X POST "$BASE_URL/posts" \
     -H "Content-Type: application/json" \
     -d '{"title": "The 10x Dev", "body": "The 10x dev is a mythical creature.", "userId": 1}'
echo -e "\n"

# PUT request
echo "PUT /posts/1"
curl -X PUT "$BASE_URL/posts/1" \
     -H "Content-Type: application/json" \
     -d '{"id": 1, "title": "The 100x Dev", "body": "The 100x dev does not exist", "userId": 1}'
echo -e "\n"

# PATCH request
echo "PATCH /posts/1"
curl -X PATCH "$BASE_URL/posts/1" \
     -H "Content-Type: application/json" \
     -d '{"title": "Mythical Creatures"}'
echo -e "\n"

# DELETE request
echo "DELETE /posts/1"
curl -X DELETE "$BASE_URL/posts/1"
echo -e "\n"
