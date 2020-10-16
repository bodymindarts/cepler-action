#!/bin/bash

cd ${1}
export CEPLER_CONF=${2}
export CEPLER_ENVIRONMENT=${3}

case `cepler check; echo $?` in
  2)  echo "::set-output name=needs_deploying::false" ;;
  0)  echo "::set-output name=needs_deploying::true" ;;
  *)  echo "Error running 'cepler check'" && exit 1 ;;
esac
