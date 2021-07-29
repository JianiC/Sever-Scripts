#!/bin/bash

for i in $(find . -type d -name "*_R"); do mv $i result; done