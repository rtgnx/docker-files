#!/bin/bash



# Databases first
for dcf in $(find db/ -name docker-compose.yml -type f); do
  docker-compose --env-file ./env -f "$dcf" up -d;
done


# Applications
for dcf in $(find apps/ -name docker-compose.yml -type f); do
  docker-compose --env-file ./env -f "$dcf" up -d;
done
