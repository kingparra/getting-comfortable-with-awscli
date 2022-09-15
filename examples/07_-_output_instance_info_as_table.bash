#!/usr/bin/env bash

# output information as a table
aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].{InstanceID:InstanceId}' \
	--output table
