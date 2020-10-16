#!/bin/bash

cd ${1}

case `cepler check; echo $?` in
  2)  echo "::set-output name=needs_deploying::false" ;;
  1)  echo "Error running 'cepler check'" && exit 1 ;;
  0)  echo "::set-output name=needs_deploying::true" ;;
esac
