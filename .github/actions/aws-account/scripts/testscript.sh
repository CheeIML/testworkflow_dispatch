#!/bin/bash

set -ex

case "$1" in
  a-test-environment)
    account_id="123456789"
    ;;
  *)
    echo "No valid account found"
    exit 1
    ;;
esac

echo $account_id