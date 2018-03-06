cmake_minimum_required (VERSION 2.8.12)
project(hello CXX Fortran)

add_executable(hellocpp hello.cpp)

add_executable(hellof hello.f90)
