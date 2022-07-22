#!/usr/bin/env bash

npx nodemon --exec "flutter test || true" -w lib -w test -e dart,graphql
