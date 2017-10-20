cmake_minimum_required (VERSION 2.8.12)
project(hello Fortran)


add_executable(hello hello.f90)

if (MINGW)
    target_link_libraries(hello -static-libgcc -static-libstdc++)
endif()
