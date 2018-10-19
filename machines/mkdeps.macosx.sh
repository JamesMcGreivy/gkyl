# if we are in machines directory, go up a directory
if [ `dirname "$0"` == "." ] 
  then
    cd ..
fi
export GKYLSOFT='~/gkylsoft'
cd install-deps
# first build OpenMPI
./mkdeps.sh --build-openmpi=yes
# now build rest of packages
./mkdeps.sh CC=clang CXX=clang++ MPICC=$GKYLSOFT/openmpi-3.0.0/bin/mpicc MPICXX=$GKYLSOFT/openmpi-3.0.0/bin/mpicxx --build-luajit=yes --build-adios=yes --build-eigen=yes
