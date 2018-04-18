mkdir keys &&
ssh-keygen -f ./keys/bosh.pem -t rsa -N '' &&

nova keypair-add --pub-key ./keys/bosh.pem.pub bosh
