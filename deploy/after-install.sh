# source /home/ec2-user/.bash_profile

cd /home/ec2-user/api
yarn
yarn build
cd dist/spa
sudo mv * /var/www/html


