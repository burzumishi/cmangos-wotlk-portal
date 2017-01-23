CMangos on ARM machines
-------------------------

# Introduction

This CMangos source was modified for build on "arm" machines, it should build in other architectures as well.


# ChangeLog

- Added "arm" arquitecture to CMakefiles.
- Modified "g3dlite" headers and "System.cpp" for building properly in "arm" machines.
- Mofified "src/mangos/CMakefile" to add "-lz" because it was failing linking "mangos" executable.


# TODO

- Maybe some server need to be modified to increase performance, this is pending on some testings ;-)
- Check how to execute "genrev" from CMakefiles, exporting "/home/you/sources/cmangos/build" to user environment PATH is not working on "qemu" tests, must be executed manually to generate required header file "revision.h".
- Check if "mangos" executable is linking against "libz" (-lz).


# Known issues

- "revision.h" not found!

   Problem:  "genrev" is not executed at build time therefore it's not creating "revision.h" header file (required).
   Solution: You can execute "genrev" by hand from "build" dir with "./genrev", this should create "revision.h".

- mangosd linking fails!

   Problem:  "mangosd" executable linking fails with unresolved symbols for libz "uncompress".
   Solution: Modify "./build/src/mangosd/CMakeFiles/mangosd.dir/link.txt" file to add "-lz".

# Build CMangos on ARM

Type or copy & paste the following commands from source directory:


```
INSTALLDIR="/opt/wowserver/data"

mkdir build;
cd build;

export PATH=$PATH:$PWD   # "genrev" fails if "build" directory is not in PATH

cmake ../ -DCMAKE_INSTALL_PREFIX=$INSTALLDIR \
  -DBUILD_EXTRACTOR=ON -DBUILD_VMAP_EXTRACTOR=ON \
  -DBUILD_MMAP_EXTRACTOR=ON -DPCH=1 -DDEBUG=0 \
  -DCMAKE_TOOLCHAIN_FILE=../cmangos-arm-toolchain.cmake
```

# Source Revisions

* 0001beta - Initial revision (does not build <atm>)


# Credits

Antonio Cao (@burzumishi) 2016


