#!/bin/bash

export CEPLER_CONF=${1}
export CEPLER_ENVIRONMENT=${2}

cepler check

if [ $? -eq 0 ]; then
  echo "::set-output name=needs_deploying::true"
else
  echo "::set-output name=needs_deploying::false"
fi

