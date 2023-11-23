#!/bin/bash

echo "Signin to authenticate (ROLE_OWNER)"

curl -s -X POST -H "Content-Type: application/json" --data-binary "@../json/signin-owner.json" -D headers.txt http://localhost:3001/userauth/v1/auth/signin/ | jq '.'

cookies=$(cat headers.txt | grep 'Set-Cookie' | awk '{print $2}' | tr '\n' ';')

echo "Get all Peeps for Owner (ROLE_OWNER)"
curl -s -X GET -H "Cookie: $cookies" http://localhost:3002/personal/v1/owner/peeps | jq '.'

echo "Get a Peep for Owner (ROLE_OWNER)"
curl -s -X GET -H "Cookie: $cookies" http://localhost:3002/personal/v1/owner/peeps/2 | jq '.'

echo "Update a Peep for Owner (ROLE_OWNER)"
curl -s -X PUT -H "Cookie: $cookies" -H "Content-Type: application/json" --data-binary "@../json/put-peep.json" http://localhost:3002/personal/v1/owner/peeps/2 | jq '.'

echo "Signout Owner (ROLE_OWNER)"
curl -s -X POST -H "Content-Type: application/json" --data-binary "@../json/signout-owner.json" http://localhost:3001/userauth/v1/auth/signout/ | jq '.'

