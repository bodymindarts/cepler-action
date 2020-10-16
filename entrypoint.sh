#!/bin/bash

export CONFIG_FILE=${1}
export ENVIRONMENT=${2}

cepler check

if [ $? -eq 0 ]; then
  echo "::set-output name=needs_deploying::true"
else
  echo "::set-output name=needs_deploying::false"
fi

