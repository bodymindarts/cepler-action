#!/bin/bash

cd ${1}
export CEPLER_CONF=${2}
export CEPLER_ENVIRONMENT=${3}

cepler check

if [ $? -eq 0 ]; then
  echo "::set-output name=needs_deploying::true"
else
  echo "::set-output name=needs_deploying::false"
fi

