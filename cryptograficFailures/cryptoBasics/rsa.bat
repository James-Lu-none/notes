@REM generate rsa private key using provided string
openssl rsa -in web.key > rsa.key

@REM generate rsa pub key using private key
openssl rsa -in private.key -pubout > rsa.pub

@REM generate rsa modulus as a file "./modulus"
openssl rsa -in private.key -outform PEM -out modulus.txt -modulus -noout 
@REM sign message(modulus) using key | convert to base64 format
openssl dgst -sha256 -sign private.key -out _cipher.sha256 modulus.txt
openssl base64 -in _cipher.sha256 -out _cipher_B64

@REM decode (verify message/ sign using public key)
openssl base64 -d -in _cipher_B64 -out _cipher.sha256
openssl dgst -sha256 -verify rsa.pub -signature _cipher.sha256 modulus.txt

