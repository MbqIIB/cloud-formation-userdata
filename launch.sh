#!/bin/bash

aws cloudformation create-stack \
	--stack-name UserDataTestStack \
    --template-body file://cloudformation.json \
    --parameters ParameterKey=UserData,ParameterValue=`cat cloud-init.sh | base64` \
    ParameterKey=AmiID,ParameterValue=ami-38cd975d \
    ParameterKey=InstanceName,ParameterValue=TempTestInstance \
    ParameterKey=SecurityGroupId,ParameterValue=sg-4ecb7c27