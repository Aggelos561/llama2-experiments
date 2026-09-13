#!/bin/bash

# always madvise never
echo $1 > /sys/kernel/mm/transparent_hugepage/enabled
