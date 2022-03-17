#!/bin/bash
for package in $(cat packages.txt)
do
  conda build ${package}
  conda install --use-local ${package}
done
