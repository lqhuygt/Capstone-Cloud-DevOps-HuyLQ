#!/usr/bin/expect -f

spawn ssh -i "huylq23-keypair.pem" ec2-user@ec2-54-82-205-140.compute-1.amazonaws.com
expect "Are you sure" { send "yes\r" } 
expect "ec2-user" { send "kubectl get nodes\r" }
expect "ec2-user" { send "kubectl run capstone-kube --image=huylq1999/capstone_aws_devops --port=5000\r" }
expect "ec2-user" { send "kubectl get pods\r" }
expect "ec2-user" { send "kubectl port-forward capstone-kube 5000:5000\r" }
expect "ec2-user" { send "kubectl get deployments\r" }
expect "ec2-user" { send "kubectl set image deployment/capstone-kube capstone-kube=capstone-kube:latest\r" }
expect "ec2-user" { send "kubectl rollout status deployment/capstone-kube\r" }
expect "ec2-user" { send "kubectl rollout undo deployment/capstone-kube\r" }
expect "ec2-user" { send "eksctl delete cluster -f eks_cluster.yml\r" }
expect "ec2-user" { send "logout\r" } 
interact
