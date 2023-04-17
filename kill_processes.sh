#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 n"
  echo "where n is the number of instances to kill (0 to n-1)"
  exit 1
fi

n=$1

for (( i=0; i<$n; i++ )); do
  port=$((3000+i))
  echo "Killing instance on port $port..."
  lsof -ti :$port | xargs kill -9
done

echo "All instances killed."

