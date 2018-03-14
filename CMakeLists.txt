cmake_minimum_required (VERSION 3.7)
project(hello CXX Fortran)

add_compile_options(-Wall -Wextra -Wpedantic)# -g -Wa,-alh)

add_executable(hellocpp hello.cpp)

add_executable(hellof hello.f90)
#
enable_testing()

add_test(NAME C++ COMMAND hellocpp)
add_test(NAME Fortran COMMAND hellof)
set_tests_properties(C++ Fortran PROPERTIES
                    PASS_REGULAR_EXPRESSION "Hello World")

find_package(PythonInterp)
if(PYTHON_VERSION_STRING STRGREATER_EQUAL 3.6)
  add_test(NAME Python COMMAND python hello.py
         WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
  set_tests_properties(Python PROPERTIES
                    PASS_REGULAR_EXPRESSION "Hello World")
endif()

