program hello

use, intrinsic:: iso_fortran_env

print *,'Hello World! (from Fortran)'
print *,compiler_version()
print *,compiler_options()

end
