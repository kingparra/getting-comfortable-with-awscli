#!/usr/bin/env bash

# query latest amazon linux 2 AMI id
aws ec2 describe-images \
	--region ap-northeast-1 \
	--query 'reverse(sort_by(Images, &CreationDate))[:1]' \
	--owners amazon \
	--filters 'Name=name,Values=amzn2-ami-hvm-2.0.*-x86_64-gp2' \
	--output table
