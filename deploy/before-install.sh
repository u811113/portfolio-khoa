source /home/ec2-user/.bash_profile
if  [ -d /home/ec2-user/api ]; then
   sudo  rm -rf /home/ec2-user/api
fi

if  [ -d /var/www/html ]; then
   sudo  rm -rf /var/www/html/*
fi