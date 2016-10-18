# Toolchain file targeting debian wheezy armhf
# using CodeSourcery Toolchain
 
SET(CMAKE_SYSTEM_NAME "Linux")
SET(CMAKE_SYSTEM_VERSION "Sid")
# CMAKE_SYSTEM_PROCESSOR
SET(CMAKE_C_COMPILER "/usr/bin/arm-linux-gnueabihf-gcc")
SET(CMAKE_CXX_COMPILER "/usr/bin/arm-linux-gnueabihf-g++")
 
SET(CMAKE_FIND_ROOT_PATH "/home/acaogon/Descargas/HTC/debian-arm/root-debian-sid-armhf")
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM "/home/acaogon/Descargas/HTC/debian-arm/root-debian-sid-armhf/usr/bin")
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY "/home/acaogon/Descargas/HTC/debian-arm/root-debian-sid-armhf/usr/lib")
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE "/home/acaogon/Descargas/HTC/debian-arm/root-debian-sid-armhf/usr/include")

SET(CMAKE_BINARY_DIR "/home/acaogon/Descargas/HTC/debian-arm/root-debian-sid-armhf/root/cmangos/cmangos-woltk-portal/build")

# weird debian way of placing libraries
SET(ZLIB_LIBRARY "/lib/arm-linux-gnueabihf")
SET(PCRE_LIBRARY "/lib/arm-linux-gnueabihf")
 
# openssl will not be found at all because the FindOpenSSL.cmake script is bad
# I had to create a symlink in /usr/lib for them
# The same applies to libmysqlclient
