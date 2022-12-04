#!/usr/bin/expect -f

spawn ssh -i "huylq23-keypair.pem" ec2-user@ec2-52-87-223-167.compute-1.amazonaws.com
expect "Are you sure" { send "yes\r" } 
expect "ec2-user" { send "aws --version\r" }
expect "ec2-user" { send "eksctl version\r" }
expect "ec2-user" { send "kubectl version\r" }
expect "ec2-user" { send "logout\r" } 
interact
