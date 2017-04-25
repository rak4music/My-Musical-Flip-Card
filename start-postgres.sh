#!/bin/sh

docker run --name postgres_flip -p 5432:5432 -e POSTGRES_PASSWORD="" -v pgdata:/var/lib/postgresql/data -d postgres