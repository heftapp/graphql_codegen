#!/usr/bin/env bash
npx get-graphql-schema https://swapi-graphql.netlify.app/.netlify/functions/index > lib/graphql/schema.graphql
