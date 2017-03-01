What are some common HTTP status codes?
-200 OK: request has succeeded
-404 Not Found: Server understood the request but refusing to fulfill it.
-500 Internal Server Error: The server encountered an unexpected condition which prevented it from fulfilling the request.
-400 Bad Request: The request could not be understood by the server due to malformed syntax

What is the difference between a GET request and a POST request? When might each be used?
GET - Requests data from a specified resource
POST - Submits data to be processed to a specified resource
Generally it seems better to use GET for actions anf POST for unsafe actions. POST is used when dealing with sensitive data and long requests. GET us used in AJAX environments.

Optional bonus question: What is a cookie (the technical kind, 
not the delicious kind)? How does it relate to HTTP requests?
Cookies are a small piece of information the user's web browser may store when it sends a request and send back together with the next request to the same server. Cookies are passed as HTTP headers in the request


