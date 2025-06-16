#!/bin/bash
# Author : Bhargav
# Date : 16th, Jun, 2025


# Version : v1
# Script will report aws resource usage
#######################
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM User

# List S3 buckets
echo "List s3 buckets"
aws s3 ls

# List EC2 instances
echo "List ec2 instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"

# List Lambda
echo "List lambda functions"
aws lambda list-functions

# List IAM users
echo "List IAM users"
aws iam list-users | jq ".Users[].UserName"


###### 0 13 * * * script.sh -- runs scripts.sh everyday @ 1PM. 