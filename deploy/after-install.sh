# source /home/ec2-user/.bash_profile

cd /home/ec2-user/api
yarn
yarn build
cd dist
sudo mv * /var/www/html


