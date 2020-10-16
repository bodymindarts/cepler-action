#!/bin/bash

cd ${1}

cepler check

case $? in
  2)  echo "::set-output name=needs_deploying::false" ;;
  1)  echo "Error running 'cepler check'" && exit 1 ;;
  0)  echo "::set-output name=needs_deploying::true" ;;
esac

if [ "${PREPARE}" -eq "true" ]; then
  cepler prepare --force-clean
fi

if [ "${RECORD}" -eq "true" ]; then
  cepler record --reset-head
fi
