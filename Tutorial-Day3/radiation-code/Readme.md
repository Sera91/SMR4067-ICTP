# CCSM4 Radiation code as implemented in RegCM

In this folder you can find the documentation of the basic serial version of
the Radiation Transfer code as implemented in the ICTP RegCM.

 * [ICTP REGCM](https://github.com/ICTP/RegCM)

The code itself is available here:

 * [radiation\_code](https://github.com/graziano-giuliani/radiation_code/tree/main)

## Code compilation and run

To compile the code on Leonardo you need to:

1. Download the code

>>>
     git clone https://github.com/graziano-giuliani/radiation_code.git
     cd radiation_code
>>>

2. load the modules/libraries

>>>
     source /leonardo/home/userexternal/ggiulian/modules_gfortran
>>>

3. Compile the program

>>>
     make
>>>

The program *radiation\_code* is now compiled. To run it, you need first to
set some pointers.

1. link the data in the data directory

>>>
     cd data
     ln -sf /leonardo/pub/userexternal/ggiulian/smr-4067/radiation/GHG/*.nc GHG
     ln -sf /leonardo/pub/userexternal/ggiulian/smr-4067/radiation/MACV2/*.nc MACV2
     ln -sf /leonardo/pub/userexternal/ggiulian/smr-4067/radiation/SOLAR/*.nc SOLAR     
     ln -sf /leonardo/pub/userexternal/ggiulian/smr-4067/radiation/mlevel/*.nc mlevel
     ln -sf /leonardo/pub/userexternal/ggiulian/smr-4067/radiation/surface/*.nc surface
     cd ..
>>>

2. Run the program:

>>>
    srun radiation_code
>>>

Two files are created:

>>>
    radiation_input.nc
    radiation_output.nc
>>>

## The physics behind

From lecture...

 * [Radiation code](https://github.com/Sera91/Tutorials-SMR4067/blob/main/Day3/Graziano/radiation-SMR4067.pdf)

## Let's have a look to what's in the netcdf files...
