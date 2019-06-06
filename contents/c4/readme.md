# Create a deploy pipeline

## STEP
Edit a [buildspeck.yml](../../buildspec.yml) file.  
Please rewrite the following values according to your environment:
- <user_name> : Your user name of Docker Hub

## STEP2
Add a secret value to [the parameter store of AWS System Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-parameter-store.html).  
`/CodeBuild/dockerLoginPassword`  
*It is your password for Docker Hub.*

## STEP3
Create a [CodePipeline](https://aws.amazon.com/getting-started/tutorials/continuous-deployment-pipeline) resource.  

## STEP4
Add an inline [policy](https://dev.classmethod.jp/cloud/codebuild-env/) to an IAM role for ec2.  
Please rewrite the following values according to your environment:
- <your_region> : Region where you created Parameter
- <account_id> : [AWS Account number](https://console.aws.amazon.com/support/home) where you using
```json
{
     "Version": "2012-10-17",
     "Statement": [
         {
             "Sid": "",
             "Effect": "Allow",
             "Action": [
                 "ssm:GetParameters"
             ],
             "Resource": [
                 "arn:aws:ssm:<your_region>:<account_id>:parameter/CodeBuild/dockerLoginPassword"
             ]
         },
         {
             "Sid": "",
             "Effect": "Allow",
             "Action": [
                 "kms:Decrypt"
             ],
             "Resource": [
                 "arn:aws:kms:<your_region>:<account_id>:key/alias/aws/ssm"
             ]
         }
     ]
 }
```

## STEP5
Push some commits and check pipeline behaviours.  
