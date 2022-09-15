#!/usr/bin/env bash

## fetch latest AMI from parameter store
aws ssm get-parameters \
	--names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 \
	--region us-east-1
