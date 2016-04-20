#!/bin/sh -x
stack_name=$1
template=`pwd`/$2
params=`pwd`/$3
echo "stack_name :: $stack_name"
echo "cfn_template :: $template"
echo "parameter_file :: $params"
aws cloudformation update-stack --stack-name $stack_name --template-body file://$template --parameters file://$params --capabilities CAPABILITY_IAM
