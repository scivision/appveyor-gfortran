program hello

use, intrinsic:: iso_fortran_env

print *,'hello world! (from Fortran)'
print *,compiler_version()
print *,compiler_options()

end
