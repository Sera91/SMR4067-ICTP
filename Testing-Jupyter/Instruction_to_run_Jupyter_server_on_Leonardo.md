#On Leonardo

Once you login to Leonardo and you cloned the Github repo in the Scratch area (following instructions in the file First_instructions.md), you can go into Day0 folder in the Github repo using the command:

$ cd $SCRATCH/SMR3941-ICTP/Day0

run the script to setup the conda envinronment and Jupyter configuration:

$ bash setup_conda.sh

you will see the message 
Enter password:

and once you enter the password you should be all set

Now you can launch the script tu run Jupyter server on Leonardo's computing nodes:

$ sbatch launch_Jupyter.sh

This script will save its output in a file "jupyter_notebook.txt" where you can find the name of the computing node assigned to your job.
Check whether the script is running on the computing node, using the command:

$ squeue -u $USER

If your job is already running, paste the content of the ".txt" file on the terminal with this command:

$ cat jupyter_notebook.txt

On the terminal you will see now the ssh command that you need to run in your local machine,
and the HTTP address from which you can access your Jupyter server.


#On your Local machine
On the local machine run the ssh command:

ssh -N -f -L 88XX:YOURNODE:88XX sdigioia@login.leonardo.cineca.it

where 
- XX are the last two numbers of your user account 
- YOURNODE is the name of the node written in the jupyter_notebook.txt


and then open the web browser (from the application of your choice: Firefox, Chrome..) and paste in the address bar the HTTP address that you copied from the "jupyter_notebook.txt" file.

# What to do after finishing the session with jupyter server on leonardo

## On Leonardo
You need to cancel the running job

$ squeue -u $USER

$ scancel JOBID 

## On your machine


 1. Search for tcp connection still opened
 2. Print the PID associated to the tcp connection opened on CINECA cluster
 3. Close the connection on local machine

To search which tcp connections are opened you can use the command:
$ tail -10 /etc/services

If you are a Linux user to print the PID type the following command on the local terminal :

$ fuser 8888/tcp
(this command will print the PID of the process listening the port in the format "8888/tcp:   PID")

If you are Windows user you can print the PID with the command:
$ netstat -a -n -o | findstr "88XX"




If you are a Linux user To kill the job (and the associated tcp connection) you should type:
$ kill -9 PID

If you are a windows user you can type the following command

taskkill /pid PID /f



