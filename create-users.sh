#!/bin/bash

echo "Signup a ROLE_OWNER"
curl -s -X POST -H "Content-Type: application/json" --data-binary "@./json/signup-owner.json" http://localhost:3001/userauth/v1/auth/signup/ | jq '.'

echo "Signup a ROLE_AGENT"
curl -s -X POST -H "Content-Type: application/json" --data-binary "@./json/signup-agent.json" http://localhost:3001/userauth/v1/auth/signup/ | jq '.'

echo "Signup a ROLE_MONITOR"
curl -s -X POST -H "Content-Type: application/json" --data-binary "@./json/signup-monitor.json" http://localhost:3001/userauth/v1/auth/signup/ | jq '.'

echo "Signup a ROLE_ADMIN"
curl -s -X POST -H "Content-Type: application/json" --data-binary "@./json/signup-admin.json" http://localhost:3001/userauth/v1/auth/signup/ | jq '.'

