#!/usr/bin/env bash

# filter by running instances
aws ec2 describe-instances \
	--filters 'Name=instance-state-name,Values=running'
