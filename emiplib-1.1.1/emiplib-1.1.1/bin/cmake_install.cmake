# Install script for directory: /Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/emiplib" TYPE FILE FILES
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipcompat.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipmessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipmediamessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miperrorbase.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipfeedback.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipversion.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miprawvideomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipdebug.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipencodedaudiomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipsystemmessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipencodedvideomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miptime.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipcomponent.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipcomponentchain.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipaudiomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miprtpmessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipvideomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/mipcomponentalias.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miprawaudiomessage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/core/miptypes_win.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/src/core/mipconfig.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/src/core/miptypes.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipv4linput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipjackinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipdirectshowcapture.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipsndfileinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipaudiorecorderinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipv4l2input.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipfrequencygenerator.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipwavinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipaudiofileinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipwinmminput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/input/mipyuv420fileinput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipsdlaudiooutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipjackoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipesdoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipopenaloutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipalsaoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipmessagedumper.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipqtoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipsndfileoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipvideoframestorage.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipaudiotrackoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipwavoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/output/mipwinmmoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/timer/mipinterchaintimer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/timer/mipaveragetimer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/timer/mippusheventtimer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/mixer/mipaudiomixer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/mixer/mipmediabuffer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/mixer/mipvideomixer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/io/mipossinputoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/io/mippainputoutput.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtppacketdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpl16encoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpcomponent.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpulawencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpalawdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpgsmdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtplpcencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtph263encoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpspeexencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpl16decoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpulawdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtplpcdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpvideoencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtph263decoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpspeexdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpdummydecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpalawencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpgsmencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpvideodecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpsilkdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transmission/miprtpsilkencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipaudio3dbase.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/miphrirlisten.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipaudiosplitter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipspeexechocanceller.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipaudiodistancefade.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/miphrirbase.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipaudiofilter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipavcodecframeconverter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipsamplingrateconverter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipsampleencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/transform/mipyuv420framecutter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipspeexencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipalawencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipgsmencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipavcodecdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipulawdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipavcodecencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/miplpcdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipulawencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipalawdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipspeexdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipgsmdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/miplpcencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/miptinyjpegdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipsilkdecoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/components/codec/mipsilkencoder.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/sessions/mipaudiosession.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/sessions/mipvideosession.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/miprtpsynchronizer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipstreambuffer.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipsignalwaiter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipwavwriter.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/miprtppacketgrouper.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipdirectorybrowser.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipresample.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipwavreader.h"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/src/util/mipspeexutil.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libemip.a")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/libemip.a")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/lib/libemip.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libemip.a")
    EXECUTE_PROCESS(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/usr/local/lib/libemip.a")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libemip.1.dylib;/usr/local/lib/libemip.dylib")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/libemip.1.dylib"
    "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/libemip.dylib"
    )
  FOREACH(file
      "$ENV{DESTDIR}/usr/local/lib/libemip.1.dylib"
      "$ENV{DESTDIR}/usr/local/lib/libemip.dylib"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
        -id "libemip.1.dylib"
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

FILE(WRITE "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/willemwouters/Downloads/emiplib-1.1.1/emiplib-1.1.1/bin/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
