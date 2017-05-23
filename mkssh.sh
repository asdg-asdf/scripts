username=${1}
IP=${2}
mkdir ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cd ~/.ssh
ssh-keygen -t rsa -P ''
cat id_rsa.pub >> authorized_keys
#ssh-copy-id -i id_rsa.pub ${username}@${IP}
#copy key file id_rsa to other server
#ssh -i id_rsa ${username}@${IP}
