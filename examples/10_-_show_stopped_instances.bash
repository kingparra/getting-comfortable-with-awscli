#!/usr/bin/env bash

# filter by stopped instances
aws ec2 describe-instances \
	--filters 'Name=instance-state-name,Values=stopped'
