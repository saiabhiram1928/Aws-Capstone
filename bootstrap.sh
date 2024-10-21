sudo yum update -y 
sudo yum install git -y
sudo yum install python3 -y
sudo yum install python3-pip -y
cd /home/ec2-user
sudo git clone https://github.com/saiabhiram1928/Aws-Capstone.git
cd Aws-Capstone/Aws
sudo pip3 install -r requirements.txt
sudo python3 manage.py runserver 0.0.0.0:80 
