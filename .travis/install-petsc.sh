#!/bin/sh

git clone https://bitbucket.org/petsc/petsc.git

#PETSC_GIT_HASH=v3.8.3
PETSC_GIT_HASH=master
DEBUG=1

cd petsc

git checkout ${PETSC_GIT_HASH}

export PETSC_DIR=$PWD

./configure PETSC_ARCH=petsc-arch \
--with-cc=gcc \
--with-cxx=g++ \
--with-fc=gfortran \
--CFLAGS='-g -O0' --CXXFLAGS='-g -O0' --FFLAGS='-g -O0 -Wno-unused-function' \
--with-clanguage=c \
--with-debug=$DEBUG  \
--with-shared-libraries=0 \
--download-hdf5 \
--download-metis \
--download-parmetis \
--download-fblaslapack \
--download-mpich=http://www.mpich.org/static/downloads/3.2/mpich-3.2.tar.gz


make all
make test

