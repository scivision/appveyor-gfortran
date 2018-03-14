[![Build status](https://ci.appveyor.com/api/projects/status/2ii31f21pg3duips?svg=true)](https://ci.appveyor.com/project/scivision/appveyor-gfortran)
[![Build Status](https://travis-ci.org/scivision/appveyor-gfortran.svg?branch=master)](https://travis-ci.org/scivision/appveyor-gfortran)
# appveyor-gfortran

Quick examples of Appveyor building with `gfortran` and other common tasks, roughly equivalent to what one would do with 
[Travis-CI](https://www.scivision.co/travis-ci-examples/).

Just like Travis-CI, I don't configure any of the per-repo dashboard configuration, I do everything through [.appveyor.yml](.appveyor.yml).


## Usage
```sh
cd bin
cmake ..
make
make test
```
