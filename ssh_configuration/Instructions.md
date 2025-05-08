Below we explain the steps to follow to configur the access to Leonardo via a pair of ssh keys

1. Generate the ssh key pairs on your laptop (calling it leo_key)
cd .ssh
ssh-keygen -t rsa -b 4096


2. copy the config.txt to the .ssh folder in your local laptop and call it simply config

3. modify the config file inserting the username associated with your trial account

4. Access leonardo via password and copy leo_key.pub in the .ssh folder in your $HOME on leonardo
