Below we explain the steps to follow to configur the access to Leonardo via a pair of ssh keys

1. Generate the ssh key pairs on your laptop (calling it leo_key)
cd .ssh
ssh-keygen -t rsa -b 4096


2. copy the config.txt to the .ssh folder in your local laptop and call it simply config

3. modify the config file inserting the username associated with your trial account

4. Access leonardo via password:
```
ssh -o "PreferredAuthentications=keyboard-interactive,password" -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -o "LogLevel ERROR" $USER@login.leonardo.cineca.it
```

5. Copy leo_key.pub in the .ssh folder in your $HOME on leonardo

```
scp -o "PreferredAuthentications=keyboard-interactive,password" -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -o "LogLevel ERROR" .ssh/leo_key.pub $USER@login.leonardo.cineca.it:/leonardo/home/userexternal/$USER/.ssh/
```

6. Add the pub key to the "authorized_keys" file in the $HOME/.ssh/ folder on Leonardo (if you do not have the file you can create and modify it with Vim)
