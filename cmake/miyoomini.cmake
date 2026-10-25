# CMake toolchain file for the Miyoo Mini (Cortex-A7, hard-float, glibc)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(MIYOO_TC "/opt/miyoomini-toolchain" CACHE PATH "Miyoo Mini toolchain root")
set(CMAKE_C_COMPILER   ${MIYOO_TC}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${MIYOO_TC}/bin/arm-linux-gnueabihf-g++)
set(CMAKE_SYSROOT      ${MIYOO_TC}/arm-linux-gnueabihf/libc)

set(CMAKE_C_FLAGS_INIT   "-mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math -pipe")
set(CMAKE_CXX_FLAGS_INIT "${CMAKE_C_FLAGS_INIT}")

# Search the sysroot and our cross-built dependencies (SDL2), never the host.
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT} $ENV{DEPS_PREFIX})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
