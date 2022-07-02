#!/bin/bash
#SBATCH --job-name=nbody
#SBATCH -output=nbody.out


module load gcc/10.1.0
module load mpich/4.0

make cpu-4th

for N in 5 8 10 16 32 64 128
do
    ./gen-plum.out $N 1
    for np in 1 2 4 8 16 32 64
    do
        mpirun -np $np ./cpu-4th > N_$(($N*1024))\_$np.txt 
    done
done

module unload mpich/4.0
module unload gcc/10.1.0
