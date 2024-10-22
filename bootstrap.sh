#!/bin/bash
sudo yum update -y 
sudo yum install git -y
sudo yum install python3 -y
sudo yum install python3-pip -y
cd /home/ec2-user
sudo git clone https://github.com/saiabhiram1928/Aws-Capstone.git
cd Aws-Capstone/Aws
sudo pip3 install -r requirements.txt
nohup sudo python3 manage.py runserver 0.0.0.0:80 > /home/ec2-user/logfile.log 2>&1 &

{
  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/home/ec2-user/Aws-Capstone/Aws/django_requests.log",
            "log_group_name": "saiabhiram-lg",
            "log_stream_name": "{instance_id}/django_requests_stream",
            "timestamp_format": "%Y-%m-%d %H:%M:%S"
          },
          {
            "file_path": "/home/ec2-user/logfile.log",
            "log_group_name": "saiabhiram-lg",
            "log_stream_name": "{instance_id}/cli_log_stream",
            "timestamp_format": "%Y-%m-%d %H:%M:%S"
          }
        ]
      }
    }
  }
}
