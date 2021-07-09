### Features
- Step 1: 
```sh  
Create new profile & Add AWS keys in cat ~/.aws/credentials 
[default]
aws_access_key_id = ******
aws_secret_access_key = ***
[Davinder]
aws_access_key_id = ********
aws_secret_access_key = *****
```
- Step 2: 
Create SSH keys and copy public under "Networking" variables.tf file

- Step 3:
Under Backend.rf , Please change the terraform state file. I have mentioned below path which you can change accordingly.
/Users/dasingh/Documents/CHEF-Trainings/terraform_base/

- Step 4:
Under AWS_Instances folder, please also change the "terraform state file path" which you mentioned in above "STEP 3"

- Step 5:
Security_group.tf , only port 80 & 22 is allowed. You can change as per the requirement

- Step 6:
If you create more EC2 Instacnes then go to AWS_Instances/variables.tf and add change the default vaule of "instance_count_main" variable.

