#!/bin/bash
#  bash create-stack.sh foo-bar ec2.yml ParameterKey=KeyName,ParameterValue=kawshing ParameterKey=InstanceType,ParameterValue=t2.micro 
S=$1
F=$2
shift 2
CMD="aws cloudformation create-stack --stack-name $S --template-body file://$F --parameters $@"
echo $CMD
$CMD
