
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/../cmake")

include(CheckCXXCompilerFlag)
include(CheckIncludeFile)
include(CheckIncludeFileCXX)
include(CheckCXXSourceCompiles)
include(TestBigEndian)
include("${PROJECT_SOURCE_DIR}/../cmake/Macros.cmake")



include_directories("${PROJECT_SOURCE_DIR}")
 
include_directories("${PROJECT_BINARY_DIR}/../")

 
include_directories("${PROJECT_BINARY_DIR}/../src/")

include_directories("${PROJECT_SOURCE_DIR}/../src/core")
include_directories("${PROJECT_SOURCE_DIR}/input")
include_directories("${PROJECT_SOURCE_DIR}/util")
include_directories("${PROJECT_SOURCE_DIR}/thirdparty")
include_directories("${PROJECT_SOURCE_DIR}/thirdparty/tinyjpeg")



include_directories("${PROJECT_BINARY_DIR}/../src/")

include_directories("${PROJECT_SOURCE_DIR}/core")
include_directories("${PROJECT_SOURCE_DIR}/input")
include_directories("${PROJECT_SOURCE_DIR}/util")
include_directories("${PROJECT_SOURCE_DIR}/thirdparty")
include_directories("${PROJECT_SOURCE_DIR}/thirdparty/tinyjpeg")

LINK_DIRECTORIES(${PROJECT_BINARY_DIR})


link_directories(${PROJECT_BINARY_DIR})


include_directories("${PROJECT_SOURCE_DIR}/../src")

set (CMAKE_CXX_FLAGS "-m32")
set (CMAKE_C_FLAGS "-m32")

apply_include_paths("${EMIPLIB_INTERNAL_INCLUDES}")
apply_include_paths("${EMIPLIB_EXTERNAL_INCLUDES}")


apply_include_paths("${PROJECT_SOURCE_DIR}/../src/components/timer")
apply_include_paths("${PROJECT_SOURCE_DIR}/../src/components/input")

apply_include_paths("${PROJECT_SOURCE_DIR}/../src/components/transform")


apply_include_paths("${PROJECT_SOURCE_DIR}/../src/components/output")

 add_definitions(-DMIPCONFIG_SUPPORT_PORTAUDIO)

apply_include_paths("${PROJECT_SOURCE_DIR}/../src/sessions")
apply_include_paths("${PROJECT_SOURCE_DIR}")

apply_include_paths("${PROJECT_SOURCE_DIR}/../src/components/codec")

apply_include_paths("${PROJECT_SOURCE_DIR}/../src/core")

apply_include_paths("${PROJECT_SOURCE_DIR}/../src/transmission")

foreach(IDX avsession feedbackexample multiplesoundfileplayer simplechain soundfileplayer soundrecorder pushtotalk
	    pushtotalk2)
	add_executable(${IDX} ${IDX}.cpp)
	if (UNIX OR EMIPLIB_COMPILE_STATIC)
		target_link_libraries(${IDX} emip jthread jrtp ${EMIPLIB_LINK_LIBS})
	else ()
		target_link_libraries(${IDX} emip ${EMIPLIB_LINK_LIBS})
	endif (UNIX OR EMIPLIB_COMPILE_STATIC)
endforeach(IDX)

