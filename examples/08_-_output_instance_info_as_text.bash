#!/usr/bin/env bash

# output information as a text
aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].{InstanceID:InstanceId}' \
	--output text
