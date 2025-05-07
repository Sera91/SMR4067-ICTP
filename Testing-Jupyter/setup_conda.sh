#Initialize conda on Leonardo
cp Conda_init.txt $HOME/

source $HOME/Conda_init.txt

#Step 0: load libraries/modules required on leonardo
module purge
module load profile/deeplrn
module load cuda/11.8
module load gcc/11.3.0
module load openmpi/4.1.4--gcc--11.3.0-cuda-11.8  
module load llvm/13.0.1--gcc--11.3.0-cuda-11.8  
module load nccl/2.14.3-1--gcc--11.3.0-cuda-11.8
module load gsl/2.7.1--gcc--11.3.0-omp

#Step 1: Load my environment from the public area 

#conda activate /leonardo/pub/usertrain/a08trc01/env/SMR3941
conda activate /leonardo/pub/userexternal/sdigioia/sdigioia/env/Gabenv


#Step 2: Setting Jupyter server configuration for your account
cd $HOME

jupyter notebook --generate-config

jupyter notebook password

