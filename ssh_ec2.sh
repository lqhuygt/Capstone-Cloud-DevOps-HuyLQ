#!/usr/bin/expect -f

spawn ssh -i "huylq23-keypair.pem" ec2-user@ec2-44-211-148-59.compute-1.amazonaws.com
expect "Are you sure" { send "yes\r" } 
expect "ec2-user" { send "aws --version\r" }
expect "ec2-user" { send "eksctl create cluster -f eks_cluster.yml\r" }
expect "ec2-user" { send "kubectl get nodes\r" }
expect "ec2-user" { send "kubectl run capstone-kube --image=huylq1999/capstone_aws_devops --port=5000\r" }
expect "ec2-user" { send "sleep 180\r" }
expect "ec2-user" { send "kubectl get pods\r" }
expect "ec2-user" { send "kubectl port-forward capstone-kube 5000:5000\r" }
expect "ec2-user" { send "logout\r" } 
interact
