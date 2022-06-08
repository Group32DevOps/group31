#script to transfer file/dir from a server to the other
# Group28 script
#note: change your .pem permission to 400 using chmod. eg sudo chmod 400 .pem
#!/bin/bash

echo "are you transfering a file:y/n?"
read filetype
echo "are you using a key or password:key/password"
read keytype
if [ $filetype == y ] && [ $keytype == key ]
then 
echo "Please type in the file to transfer"
read file
echo "please type in the destination private IP address"
read IP
echo "please type in the target destination"
read dest
echo "username"
read username
echo `scp -i tomcatkey.pem $file $username@$IP:$dest`
elif [ $filetype == y ] && [ $keytype == password ]
then
echo "Please type in the file to transfer"
read file
echo "please type in the destination private IP address"
read IP
echo "please type in the target destination"
read dest
echo "username"
read username
echo `scp $file $username@$IP:$dest`
#echo "password"
#read -s $password
else
echo "move on please"
fi

