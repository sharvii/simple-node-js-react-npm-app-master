#!/usr/bin/env sh






ssh -tt ec2-user@ec2-18-220-71-177.us-east-2.compute.amazonaws.com <<EOF
cd /home/ec2-user/node-app
git clone -b Test https://github.com/sharvii/simple-node-js-react-npm-app-master.git 
npm install --production
set -x
npm run build
set +x









set -x
npm start &
sleep 1
echo $! > .pidfile
set +x
exit
EOF




