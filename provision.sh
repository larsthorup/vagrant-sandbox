#!/usr/bin/env bash

# echo "Installing PostgreSQL..."
# apt-get update >/dev/null 2>&1
# apt-get install -y postgresql >/dev/null 2>&1

echo "Installing Salt..."
wget -O - http://bootstrap.saltstack.org | sh >/dev/null 2>&1

echo "Salting system..."
salt-call --local state.highstate -l debug >/dev/null 2>&1