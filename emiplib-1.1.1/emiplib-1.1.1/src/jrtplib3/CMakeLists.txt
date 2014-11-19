add_definitions(-DJRTPLIB_COMPILING)
add_definitions(-DRTPDEBUG)

macro(jrtplib_support_option DESCRIPTION OPTIONNAME DEFINENAME DEFAULTVALUE EMPTYVALUE)
	option(${OPTIONNAME} ${DESCRIPTION} ${DEFAULTVALUE})
	if (${OPTIONNAME})
		set(${DEFINENAME} "#define ${DEFINENAME}")
	else (${OPTIONNAME})
		set(${DEFINENAME} "${EMPTYVALUE}")
	endif (${OPTIONNAME})
endmacro(jrtplib_support_option)

macro(jrtplib_include_test INCFILE DEFINENAME EMPTYVALUE)
	check_include_file_cxx(${INCFILE} jrtplib_include_test_${DEFINENAME})
	if (jrtplib_include_test_${DEFINENAME})
		set(${DEFINENAME} "#define ${DEFINENAME}")
	else (jrtplib_include_test_${DEFINENAME})
		set(${DEFINENAME} "${EMPTYVALUE}")
	endif (jrtplib_include_test_${DEFINENAME})
endmacro(jrtplib_include_test)

macro (jrtplib_test_feature FILENAME DEFINENAME INVERT EMPTYVALUE) 
	if (NOT DEFINED ${FILENAME}_RESULT)
		try_compile(${FILENAME}_RESULT "${PROJECT_BINARY_DIR}" "${PROJECT_SOURCE_DIR}/tools/${FILENAME}.cpp"
			    OUTPUT_VARIABLE OUTVAR)
		message(STATUS "Compiling ${FILENAME}.cpp")
		set(BLA ${INVERT})
		if (NOT BLA)
			if (${FILENAME}_RESULT)
				set(${DEFINENAME} "#define ${DEFINENAME}" CACHE INTERNAL "setting ${DEFINENAME} in rtpconfig.h")
				message(STATUS "Compiling ${FILENAME}.cpp worked - setting ${DEFINENAME} in rtpconfig.h")
			else (${FILENAME}_RESULT)
				set(${DEFINENAME} "${EMPTYVALUE}" CACHE INTERNAL "")
				message(STATUS "Compiling ${FILENAME}.cpp failed - no action necessary")
			endif (${FILENAME}_RESULT)
		else (NOT BLA)
			if (NOT ${FILENAME}_RESULT)
				set(${DEFINENAME} "#define ${DEFINENAME}" CACHE INTERNAL "setting ${DEFINENAME} in rtpconfig.h")
				message(STATUS "Compiling ${FILENAME}.cpp failed - setting ${DEFINENAME} in rtpconfig.h")
			else (NOT ${FILENAME}_RESULT)
				set(${DEFINENAME} "${EMPTYVALUE}" CACHE INTERNAL "")
				message(STATUS "Compiling ${FILENAME}.cpp worked - no action necessary")
			endif (NOT ${FILENAME}_RESULT)
		endif (NOT BLA)
	endif (NOT DEFINED ${FILENAME}_RESULT)
endmacro (jrtplib_test_feature)

macro(save_paths VARNAME)
	set (BLA "${ARGN}")
	foreach(i IN LISTS BLA)
		set (BLA2 "${i}")
		if (BLA2)
			list(APPEND ${VARNAME} "${i}")
		endif (BLA2)
	endforeach(i)
	list(LENGTH ${VARNAME} BLA)
	if (BLA GREATER 0)
		list(REMOVE_DUPLICATES ${VARNAME})
	endif (BLA GREATER 0)
endmacro(save_paths)

macro(remove_empty VARNAME)
	set (remove_empty_NEWLIST "")
	foreach(i IN LISTS ${VARNAME})
		set (BLA2 "${i}")
		if (BLA2)
			list(APPEND remove_empty_NEWLIST "${i}")
		endif (BLA2)
	endforeach(i)
	set(${VARNAME} "${remove_empty_NEWLIST}")
endmacro(remove_empty)

macro(apply_include_paths VARNAME)
	set (BLA "${VARNAME}")
	foreach(i IN LISTS BLA)
		set (BLA2 "${i}")
		if (BLA2)
			include_directories("${i}")
		endif (BLA2)
	endforeach(i)
endmacro(apply_include_paths)

macro(add_additional_stuff INCVAR LIBVAR)
	set(ADDITIONAL_INCLUDE_DIRS "" CACHE STRING "Additional include directories")
	if (UNIX AND NOT WIN32)
		set(ADDITIONAL_LIBRARIES "" CACHE STRING "Additional libraries to link against")
	else (UNIX AND NOT WIN32)
		set(ADDITIONAL_GENERAL_LIBRARIES "" CACHE STRING "Additional libraries to link against in both debug and release modes")
		set(ADDITIONAL_RELEASE_LIBRARIES "" CACHE STRING "Additional libraries to link against in release mode")
		set(ADDITIONAL_DEBUG_LIBRARIES "" CACHE STRING "Additional libraries to link against in debug mode")

		set(ADDITIONAL_LIBRARIES "${ADDITIONAL_GENERAL_LIBRARIES}")

		foreach(l IN LISTS ADDITIONAL_RELEASE_LIBRARIES)
			list(APPEND ADDITIONAL_LIBRARIES optimized)
			list(APPEND ADDITIONAL_LIBRARIES "${l}")
		endforeach(l)
		foreach(l IN LISTS ADDITIONAL_DEBUG_LIBRARIES)
			list(APPEND ADDITIONAL_LIBRARIES debug)
			list(APPEND ADDITIONAL_LIBRARIES "${l}")
		endforeach(l)
	endif (UNIX AND NOT WIN32)

	save_paths(${INCVAR} "${ADDITIONAL_INCLUDE_DIRS}")
	save_paths(${LIBVAR} "${ADDITIONAL_LIBRARIES}")
endmacro(add_additional_stuff)



set (HEADERS
	rtcpapppacket.h
	rtcpbyepacket.h
	rtcpcompoundpacket.h
	rtcpcompoundpacketbuilder.h
	rtcppacket.h
	rtcppacketbuilder.h
	rtcprrpacket.h
	rtcpscheduler.h
	rtcpsdesinfo.h
	rtcpsdespacket.h
	rtcpsrpacket.h
	rtcpunknownpacket.h
	rtpaddress.h
	rtpcollisionlist.h
	${PROJECT_BINARY_DIR}/src/rtpconfig.h
	rtpdebug.h
	rtpdefines.h
	rtperrors.h
	rtphashtable.h
	rtpinternalsourcedata.h
	rtpipv4address.h
	rtpipv4destination.h
	rtpipv6address.h
	rtpipv6destination.h
	rtpkeyhashtable.h
	rtplibraryversion.h
	rtpmemorymanager.h
	rtpmemoryobject.h
	rtppacket.h
	rtppacketbuilder.h
	rtppollthread.h
	rtprandom.h
	rtprandomrand48.h
	rtprandomrands.h
	rtprandomurandom.h
	rtprawpacket.h
	rtpsession.h
	rtpsessionparams.h
	rtpsessionsources.h
	rtpsourcedata.h
	rtpsources.h
	rtpstructs.h
	rtptimeutilities.h
	rtptransmitter.h
	rtptypes_win.h
	${PROJECT_BINARY_DIR}/src/rtptypes.h
	rtpudpv4transmitter.h
	rtpudpv6transmitter.h  
	rtpbyteaddress.h
	rtpexternaltransmitter.h)

set(SOURCES
	rtcpapppacket.cpp
	rtcpbyepacket.cpp
	rtcpcompoundpacket.cpp
	rtcpcompoundpacketbuilder.cpp
	rtcppacket.cpp
	rtcppacketbuilder.cpp
	rtcprrpacket.cpp
	rtcpscheduler.cpp
	rtcpsdesinfo.cpp
	rtcpsdespacket.cpp
	rtcpsrpacket.cpp
	rtpcollisionlist.cpp
	rtpdebug.cpp
	rtperrors.cpp
	rtpinternalsourcedata.cpp
	rtpipv4address.cpp
	rtpipv6address.cpp
	rtplibraryversion.cpp
	rtppacket.cpp
	rtppacketbuilder.cpp
	rtppollthread.cpp
	rtprandom.cpp
	rtprandomrand48.cpp
	rtprandomrands.cpp
	rtprandomurandom.cpp
	rtpsession.cpp
	rtpsessionparams.cpp
	rtpsessionsources.cpp
	rtpsourcedata.cpp
	rtpsources.cpp
	rtptimeutilities.cpp
	rtpudpv4transmitter.cpp
	rtpudpv6transmitter.cpp 
	rtpbyteaddress.cpp
	rtpexternaltransmitter.cpp)

if (UNIX)
	set (SOURCES ${SOURCES} extratransmitters/rtpfaketransmitter.cpp )
	set (HEADERS ${HEADERS} extratransmitters/rtpfaketransmitter.h )
else (UNIX)
	set(CMAKE_DEBUG_POSTFIX _d)
endif (UNIX)

if (UNIX OR JRTPLIB_COMPILE_STATIC)
	add_library(jrtplib-static STATIC ${SOURCES} ${HEADERS})
	if (UNIX)
		set_target_properties(jrtplib-static PROPERTIES OUTPUT_NAME jrtp)
	else (UNIX)
		set_target_properties(jrtplib-static PROPERTIES OUTPUT_NAME jrtplib)
	endif(UNIX)
	set_target_properties(jrtplib-static PROPERTIES CLEAN_DIRECT_OUTPUT 1)
	set(JRTPLIB_INSTALLTARGETS jrtplib-static)
	target_link_libraries(jrtplib-static ${JRTPLIB_LINK_LIBS})
endif (UNIX OR JRTPLIB_COMPILE_STATIC)

if (UNIX OR NOT JRTPLIB_COMPILE_STATIC)
	add_library(jrtplib-shared SHARED ${SOURCES} ${HEADERS})
	if (UNIX)
		set_target_properties(jrtplib-shared PROPERTIES OUTPUT_NAME jrtp)
	else (UNIX)
		set_target_properties(jrtplib-shared PROPERTIES OUTPUT_NAME jrtplib)
	endif(UNIX)
	set_target_properties(jrtplib-shared PROPERTIES VERSION 1)
	set_target_properties(jrtplib-shared PROPERTIES CLEAN_DIRECT_OUTPUT 1)
	set(JRTPLIB_INSTALLTARGETS ${JRTPLIB_INSTALLTARGETS} jrtplib-shared)
	target_link_libraries(jrtplib-shared ${JRTPLIB_LINK_LIBS})
endif (UNIX OR NOT JRTPLIB_COMPILE_STATIC)

apply_include_paths("${JRTPLIB_INTERNAL_INCLUDES}")
apply_include_paths("${JRTPLIB_EXTERNAL_INCLUDES}")

install(FILES ${HEADERS} DESTINATION include/jrtplib3)
install(TARGETS ${JRTPLIB_INSTALLTARGETS} DESTINATION ${LIBRARY_OUTPUT_PATH})


set(JRTPLIB_FOUND 1)

set(JRTPLIB_INCLUDE_DIRS ${JRTPLIB_INCDIRS_CMAKECONFIG})

set(JRTPLIB_LIBRARIES ${JRTPLIB_LIBS_CMAKECONFIG})

configure_file (${CMAKE_CURRENT_SOURCE_DIR}/rtpconfig.h.in ${CMAKE_CURRENT_BINARY_DIR}/rtpconfig.h)
configure_file (${CMAKE_CURRENT_SOURCE_DIR}/rtptypes.h.in ${CMAKE_CURRENT_BINARY_DIR}/rtptypes.h)
