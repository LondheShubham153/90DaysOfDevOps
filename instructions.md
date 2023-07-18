Tried to create an application load balancer using terraform:

What i have done here is :
Defined variables in terraform like aws region , ssl certificate done via (AWS-account)
logged on to Aws account using CLI from terminal.

Provision EC2 instance ,  
create an Ec2 instance , define key-pair 
configure load balancer , give availability zones 
implement auto-scaling 
give it the desired vpc , and the subnet in which it will run . Created a diff file for security grp allotment 
Also had a part for the output of dns after terraform apply 
After all these things did - terraform init, plan , apply but 0 changes were made nor the DNS was shown 
had to do terraform destroy. 