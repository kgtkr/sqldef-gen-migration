#!/usr/bin/env bash

cd $(dirname "$0")

rm -f ./db.sqlite3
sqldef-gen-migration -c sqlite3def -o ./migration1 -f ./schema1.sql -- ./db.sqlite3
sqldef-gen-migration -c sqlite3def -o ./migration2 -f ./schema2.sql -- ./db.sqlite3
