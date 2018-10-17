cmake_minimum_required (VERSION 3.12)
project(hello CXX Fortran)
enable_testing()

set(CTEST_OUTPUT_ON_FAILURE ON)

add_compile_options(-Wall -Wextra -Wpedantic)

add_executable(hellocpp hello.cpp)

add_executable(hellof hello.f90)

add_test(NAME C++ COMMAND hellocpp)
add_test(NAME Fortran COMMAND hellof)
set_tests_properties(C++ Fortran PROPERTIES
                    PASS_REGULAR_EXPRESSION "Hello World")

find_package(Python)
if(PYTHON_VERSION_STRING STRGREATER_EQUAL 3.6)
  add_test(NAME Python COMMAND python hello.py
         WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
  set_tests_properties(Python PROPERTIES
                    PASS_REGULAR_EXPRESSION "Hello World")
endif()

