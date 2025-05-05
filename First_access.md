Before using CINECA resources you are asked to register yourself and accept their access policy on the CINECA portaL:
https://eventi.cineca.it/en/hpc/reserved-course/20250505 

Then, you can find your personal trial account in the file accounts_SMR4067.md

To change the password to be used on Leonardo, we first need to access Galileo:
```
ssh -o "PreferredAuthentications=keyboard-interactive,password" -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" -o "LogLevel ERROR" $USER@login.g100.cineca.it
```

and inputting your initial password (sVk8kKqH..)

The first time you login on G100, you will be requested  to change your password. 
The password has to be 10 characters long, and it should contain at least 1 upper capital letter, 1 number and 1 special
character (!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~).




