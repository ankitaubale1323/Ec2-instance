#!user/bin/bash

#author: Ankita Ubale
#date  4/8/2025


#create Ec2 instance through CLi


aws run Ec2 Instances 

image-id  'ami-000000x image id'
count 1
instance-type "t2.micro"
key-name "keypairname"
security-groups default
tag specifications 'ResourceType=instance,Tags=[{Key=Name,Value=testingInstance }]'


#Get deatil list of Ec2 instances
aws ec2 describe-instances

#get detail list of Ec2 with specific prameter'
aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].[PublicIpAddress, PublicDnsName]" \
  --output table

