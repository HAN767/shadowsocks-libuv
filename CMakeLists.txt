macro(use_c99)
  if (CMAKE_VERSION VERSION_LESS "3.1")
    if (CMAKE_C_COMPILER_ID STREQUAL "GNU")
      set (CMAKE_C_FLAGS "--std=gnu99 ${CMAKE_C_FLAGS}")
    endif ()
  else ()
    set (CMAKE_C_STANDARD 99)
  endif ()
endmacro(use_c99)


cmake_minimum_required(VERSION 2.8.0)

# Workspace name
project(ss-libuv)
use_c99()
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

set(CONFIGURATION_NAME "Debug")

# Projects
add_executable(ssclient src/client.c src/crypt.c src/getopt.c src/handshake.c src/localmain.c src/localser.c src/remote.c src/s5.c src/shadow.c src/utils.c)
add_executable(ssserver src/crypt.c src/getopt.c src/handshake.c src/remote.c src/server.c src/shadow.c src/utils.c)
add_executable(sstest src/crypt.c src/encrypt.c src/md5.c src/rc4.c src/tests.c)

IF (WIN32)
target_link_libraries(ssclient uv crypto ssl ws2_32)
target_link_libraries(ssserver uv crypto ssl ws2_32)
ELSEIF(CMAKE_SYSTEM_NAME MATCHES "MINGW")
target_link_libraries(ssclient uv crypto ssl ws2_32)
target_link_libraries(ssserver uv crypto ssl ws2_32)
ELSE()
target_link_libraries(ssclient uv crypto ssl )
target_link_libraries(ssserver uv crypto ssl )
ENDIF()
target_link_libraries(sstest crypto ssl)
set_property(TARGET ssclient PROPERTY C_STANDARD 99)
set_property(TARGET ssserver PROPERTY C_STANDARD 99)

