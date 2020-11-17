#!/bin/bash

[ -z "$1" ] && echo "(first arrgument) label path is not set" && exit 1

[ -z "$2" ] && echo "(2nd argument)exclude character is not set" && exit 1

for filename in $1/*.txt; do

	sed -i "/^$2/!d" $filename 
done
