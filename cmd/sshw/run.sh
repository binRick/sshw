#!/bin/bash
set -e
cd $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if ! go run .; then
  go mod tidy
  go get
  go run .
fi
