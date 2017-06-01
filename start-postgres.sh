#!/bin/sh

docker run --name postgres_flip -p 5432:5432 -e POSTGRES_PASSWORD="" -e POSTGRES_DB="mymusicalflipcard" -v pgdata:/var/lib/postgresql/data -d postgres