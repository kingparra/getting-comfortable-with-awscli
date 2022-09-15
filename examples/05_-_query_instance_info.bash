#!/usr/bin/env bash

# query specific info about your instances
aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].InstanceId'
