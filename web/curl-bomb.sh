#!/bin/sh

ADDRESS="$1"
ITERS="$2"

function usage() {
  echo "USAGE: curl-bomb [address] [iterations]"
}

if [ -z ${ADDRESS} ]; then
  echo "ERROR: Missing address"
  usage
  exit -1
fi

if [ -z ${ITERS} ]; then
  echo "ERROR: Missing iterations"
  usage
  exit -1
fi

for (( _i=1; _i<=${ITERS}; _i++ ))
do
  echo ${_i}
  curl ${ADDRESS} &>/dev/null
done
