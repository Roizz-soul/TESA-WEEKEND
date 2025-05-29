# whiteNight
# Testing HTTP requests with 'curl' in WSL

## GET Request
curl https://jsonplaceholder.typicode.com/users/1

## POST Request
curl -X POST https://jsonplaceholder.typicode.com/users \
  -H "Content-Type: application/json; charset=UTF-8" \
  -d '{
    "id": 1,
    "name": "whiteNight",
    "username": "wN",
    "email": "whiteNight@wn.com",
    "address": {
      "street": "whiteNight Street",
      "suite": "Suite wN1",
      "city": "Nightvale",
      "zipcode": "11111-1111",
      "geo": {
        "lat": "11.1111",
        "lng": "22.2222"
      }
    },
    "phone": "111-222-3333",
    "website": "whitenight.dev",
    "company": {
      "name": "whiteNight Innovations",
      "catchPhrase": "Shining bright in the dark",
      "bs": "empower ambient quantum ecosystems"
    }
  }'

## PUT Request
curl -X PUT https://jsonplaceholder.typicode.com/users/1 \
  -H "Content-Type: application/json; charset=UTF-8" \
  -d '{
    "id": 1,
    "name": "whiteNight",
    "username": "wN",
    "email": "whiteNight@wn.com",
    "address": {
      "street": "whiteNight Street",
      "suite": "Suite wN1",
      "city": "Nightvale",
      "zipcode": "11111-1111",
      "geo": {
        "lat": "11.1111",
        "lng": "22.2222"
      }
    },
    "phone": "111-222-3333",
    "website": "whitenight.dev",
    "company": {
      "name": "whiteNight Innovations",
      "catchPhrase": "Shining bright in the dark",
      "bs": "empower ambient quantum ecosystems"
    }
  }'

## DELETE Request
curl -X DELETE https://jsonplaceholder.typicode.com/users/1

