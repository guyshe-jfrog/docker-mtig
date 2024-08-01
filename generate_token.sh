#!/usr/bin/env sh
set -e
DIR="$( cd "$( dirname "$0" )" && pwd )"

cp "${DIR}"/postgres.env.template "${DIR}"/postgres.env
cp "${DIR}"/provisioning/datasources/datasource.yml.template "${DIR}"/provisioning/datasources/datasource.yml

TOKEN="$(head -c 64 /dev/urandom | base64 | tr -d '\n')"
sed -i 's@INFLUX_DB_TOKEN_PLACEHOLDER@'"${TOKEN}"'@g' "${DIR}"/provisioning/datasources/datasource.yml "${DIR}"/postgres.env
