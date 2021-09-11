#!/usr/bin/env bash

PRIVATE_KEY=$(cat .private_key)
CERT=$(cat .cert)

if [[ -z "${PRIVATE_KEY}" ]]; then
  echo "Private key is missing"
  exit 1
fi

if [[ -z "${CERT}" ]]; then
  echo "Certificate is missing"
  exit 1
fi
