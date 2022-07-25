#!/bin/bash

CWD=$(pwd)

cd $CWD/15.0

for i in * ; do
  cd $i
  rm -rf *.tar.gz
  rm -rf *.asc
  for j in * ; do
    . $j/$j.info
    if [ "$MAINTAINER" = "Petar Petrov" ]; then
      mkdir -p $CWD/mine/$i
      cp -a $j $CWD/mine/$i
    fi
  done
  cd ..
done
