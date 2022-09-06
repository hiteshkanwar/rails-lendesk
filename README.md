# README

## Rails Authentication with Redis

A Rails authentication API that uses just Redis for data storage.

### To run:

1. `rails server`
2. `redis-server`

### Running tests:

`rspec`

### Endpoints

_POST /users_

params:

- username
- password

_POST /login_

params

- username
- password
