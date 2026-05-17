#!/bin/sh -e

docker compose exec fishtest-worker touch /home/worker/fishtest/worker/fish.exit
