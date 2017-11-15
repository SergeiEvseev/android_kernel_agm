#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Usage:"
	echo "  sh clone_project.sh oldproject newproject"
else
	perl ./scripts/clone_kernel_project.pl $1 $2
fi

