# reference: https://www.openssl.org/docs/man3.0/man1/openssl-enc.html
docker run -d webgoat/assignments:findthesecret
#login as root
docker exec -ti --user 0 container_num bash
# you can do passwd to change password if you want


echo message  | openssl enc -aes-256-cbc -d -a -out result.txt
# or
echo message  | openssl enc -aes-256-cbc -d -a -out result.txt -kfile default_secret
# or dont output to a file
echo message  | openssl enc -aes-256-cbc -d -a -kfile default_secret
