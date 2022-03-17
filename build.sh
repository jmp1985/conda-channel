#!/bin/bash
for package in $(cat packages.txt)
do
  conda build conda/${package}
  conda install --use-local ${package}
done
