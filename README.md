# Accounts API

## Authenticate
### Request
- type: POST
- path: /authenticate/
- content: JSON
- request body:
  ```
  {
    "username": string,
    "password": string
  }
  ```
  
### Response:
- content: JSON
- codes:
  - 200 Ok - success
  - 400 Bad Request - authentication failed
- content on success:
  ```
  {
    "auth_token": string
  }
  ```
  
## Authorized
### Request
- type: POST
- path: /authorized/
- content: JSON
- request body:
  ```
  {
    "auth_token": string
  }
  ```
  
### Response
- content: JSON
- codes:
  - 200 Ok - success
  - 401 Unathorized - unauthorised
  - 400 Bad Request - params missing
- content on success:
  ```
  {
    "username": string
  }
  ```
  
## Register
### Request
- type: POST
- path: /register/
- content: JSON
- request body:
  ```
  {
    "username": string,
    "password": string,
    "password_confirmitation": string
  }
  ```
  
### Response
- content: JSON
- codes:
  - 200 Ok - success
  - 400 Bad Request - params missing or incorrect
- content on success:
  ```
  {
    "auth_token": string
  }
  ```
