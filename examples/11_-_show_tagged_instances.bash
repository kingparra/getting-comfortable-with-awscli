#!/usr/bin/env bash

# filter by tag
aws ec2 describe-instances \
	--filters 'Name=tag:Env, Values=Prod'
