# Install script for directory: /Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/jrtplib3" TYPE FILE FILES
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpapppacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpbyepacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpcompoundpacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpcompoundpacketbuilder.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcppacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcppacketbuilder.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcprrpacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpscheduler.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpsdesinfo.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpsdespacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpsrpacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtcpunknownpacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpaddress.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpcollisionlist.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpconfig.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpdebug.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpdefines.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtperrors.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtphashtable.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpinternalsourcedata.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpipv4address.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpipv4destination.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpipv6address.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpipv6destination.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpkeyhashtable.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtplibraryversion.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpmemorymanager.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpmemoryobject.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtppacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtppacketbuilder.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtppollthread.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtprandom.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtprandomrand48.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtprandomrands.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtprandomurandom.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtprawpacket.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpsession.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpsessionparams.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpsessionsources.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpsourcedata.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpsources.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpstructs.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtptimeutilities.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtptransmitter.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtptypes_win.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtptypes.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpudpv4transmitter.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpudpv6transmitter.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpbyteaddress.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/rtpexternaltransmitter.h"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/extratransmitters/rtpfaketransmitter.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.a")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src" TYPE STATIC_LIBRARY FILES "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.a")
  IF(EXISTS "$ENV{DESTDIR}/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.a")
    EXECUTE_PROCESS(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.a")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.1.dylib;/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.dylib")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src" TYPE SHARED_LIBRARY FILES
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.1.dylib"
    "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.dylib"
    )
  FOREACH(file
      "$ENV{DESTDIR}/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.1.dylib"
      "$ENV{DESTDIR}/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/src/libjrtp.dylib"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
        -id "libjrtp.1.dylib"
        "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/willemwouters/Downloads/jrtplib-3.9.1/jrtplib-3.9.1/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
