#!/bin/bash

aws cloudformation create-stack --stack-name UserDataTestStack \
    --template-body file://cf.json \
    --parameters ParameterKey=UserData,ParameterValue=`cat userdata.sh | base64`