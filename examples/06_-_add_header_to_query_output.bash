#!/usr/bin/env bash

# add a hearder or key to the field you query
aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].{InstanceID:InstanceId}'
