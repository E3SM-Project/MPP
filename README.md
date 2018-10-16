# MPP

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://github.com/MPP-LSM/MPP/blob/master/License.txt)
[![DOI](https://zenodo.org/badge/117907556.svg)](https://zenodo.org/badge/latestdoi/117907556)
[![Build Status](https://travis-ci.org/MPP-LSM/MPP.svg?branch=master)](https://travis-ci.org/MPP-LSM/MPP)


Multi-Physics Problem (MPP) library is a standalone library that
solves biophysics problems relevant to global land surface models (LSMs).


## Installation

### Requirements

* Mac
* Git 
* C and Fortran compiler
* CMake
* PETSc
* Message Passing Interface


### Installation instructions

#### 

#### Install PETSc

1. Clone PETSc and check out the **supported** version.
```sh
cd <directory-of-choice>
git clone https://bitbucket.org/petsc/petsc petsc
cd petsc
git checkout v3.8.3
```

2. Configure PETSc. (Detailed PETSc installation instructions are available [here](http://www.mcs.anl.gov/petsc/documentation/installation.html))


2.1. Set PETSc installation location and architecture
```sh
export PETSC_DIR=$PWD
export PETSC_ARCH=<user-defined>
```

2.2. Set compilers
```sh
# Set compilers
export CC=<Parallel-C-compiler>
export CXX=<Parallel-C++-compiler>
export FC=<Parallel-Fortran-compiler>
export MPIEXCE=<Path-to-mpiexec>
export BLAS_DIR=<Path-to-BLAS-dir>
```

On Mac OS X, one can set `BLAS_DIR` to `/System/Library/Frameworks/Accelerate.framework/Versions/Current/Accelerate`


2.3. Run configure 
```sh
./configure \
--with-cc=$CC   \
--with-cxx=$CXX \
--with-fc=$FC \
--with-mpiexec=$MPIEXEC \
--with-blas-lapack-lib=$BLAS_DIR
```

3. Build PETSc
```
make PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH all
```

4. Test PETSc installation
```
make PETSC_DIR=$PETSC_DIR PETSC_ARCH=$PETSC_ARCH test
```

#### Install MPP

1. Clone MPP repository from github.com.
```sh
cd <directory-of-choice>
git clone https://github.com/MPP-LSM/MPP
```

2. Configure MPP
```sh
cd MPP
make CC=$CC CXX=$CXX FC=$FC config
```

3. Build MPP
```sh
make CC=$CC CXX=$CXX FC=$FC install
```

4. Run MPP tests
```sh
make CC=$CC CXX=$CXX FC=$FC test
```
