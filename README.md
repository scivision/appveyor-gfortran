[![Build status](https://ci.appveyor.com/api/projects/status/2ii31f21pg3duips?svg=true)](https://ci.appveyor.com/project/scivision/appveyor-gfortran)
[![Build Status](https://travis-ci.org/scivision/appveyor-gfortran.svg?branch=master)](https://travis-ci.org/scivision/appveyor-gfortran)

# AppVeyor examples with gfortran and CMake

Quick examples of Appveyor building with `gfortran` and other common tasks, roughly equivalent to what one would do with 
[Travis-CI](https://www.scivision.co/travis-ci-examples/).

Just like Travis-CI, no need to configure any of the per-repo dashboard configuration.
Everything is configured through [.appveyor.yml](.appveyor.yml).

## Prereqs

* Mac: `brew install gcc cmake`
* Linux: `apt install g++ gfortran cmake`
* [Windows](https://www.scivision.co/brew-install-scoop-for-windows/): `scoop install gcc cmake`

## Usage
```sh
cd bin

cmake ..
cmake --build .

ctest -V
```
