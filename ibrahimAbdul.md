```markdown
# cURL: HTTP Methods & Essential Options

A comprehensive guide to using cURL for API testing, covering all HTTP methods and most frequently used options.

## HTTP Methods (CRUD Operations)
```
### 1. GET (Retrieve Data)
The GET method requests data from a specified resource.

```bash
# Fetch all posts
curl https://jsonplaceholder.typicode.com/posts

# Get specific post (ID 1)
curl https://jsonplaceholder.typicode.com/posts/1

# With query parameters
curl "https://jsonplaceholder.typicode.com/posts?userId=1"
```

### 2. POST (Create Data)
The POST method submits data to be processed to a specified resource.

```bash
# Create new post
curl -X POST \
  -H "Content-Type: application/json" \
  -d '{"title":"New Post","body":"Content","userId":1}' \
  https://jsonplaceholder.typicode.com/posts
```
### 3. PUT (Full Update)
The PUT method replaces all current representations of the target resource with the request payload.

```bash
# Update entire post (ID 1)
curl -X PUT \
  -H "Content-Type: application/json" \
  -d '{"id":1,"title":"Updated Title","body":"New content","userId":1}' \
  https://jsonplaceholder.typicode.com/posts/1
```

### 4. PATCH (Partial Update)
The PATCH method applies partial modifications to a resource.

```bash
# Update only title
curl -X PATCH \
  -H "Content-Type: application/json" \
  -d '{"title":"Revised Title"}' \
  https://jsonplaceholder.typicode.com/posts/1
```

### 5. DELETE (Remove Data)
The DELETE method deletes the specified resource.

```bash
# Delete post (ID 1)
curl -X DELETE \
  https://jsonplaceholder.typicode.com/posts/1
```


## Essential cURL Options

### Headers
```bash
# Custom headers
curl -H "Accept: application/json" \
     -H "X-Custom-Header: Value" \
     https://api.example.com/data
```


### Request Body
```bash
# Send JSON body
curl -X POST \
  -H "Content-Type: application/json" \
  -d '{"key":"value"}' \
  https://api.example.com

# From file
curl -X POST -d @data.json https://api.example.com
```

### Authentication
```bash
# Basic Auth
curl -u username:password https://api.example.com

# Bearer Token
curl -H "Authorization: Bearer YOUR_TOKEN" https://api.example.com
```

### Debugging
```bash
# View request/response headers (-v)
curl -v https://jsonplaceholder.typicode.com/posts/1

# Show only status code
curl -s -o /dev/null -w "%{http_code}" https://jsonplaceholder.typicode.com/posts/1
```

### File Transfer
```bash
# Download file
curl -O https://example.com/file.zip

# Upload file
curl -F "file=@localfile.txt" https://api.example.com/upload
```

## Pro Tips

```bash
# Follow redirects
curl -L https://example.com

# Limit bandwidth (100KB/s)
curl --limit-rate 100K https://example.com/large-file

# Retry failed requests
curl --retry 3 https://example.com
```

All examples tested against [JSONPlaceholder](https://jsonplaceholder.typicode.com), a free fake API for testing.
```