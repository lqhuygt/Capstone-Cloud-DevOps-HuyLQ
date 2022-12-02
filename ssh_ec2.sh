#!/usr/bin/expect -f

spawn ssh -i "huylq23-keypair.pem" ec2-user@ec2-44-211-148-59.compute-1.amazonaws.com
expect "Are you sure" { send "yes\r" } 
expect "ec2-user" { send "aws --version\r" }
expect "ec2-user" { send "logout\r" } 
interact
