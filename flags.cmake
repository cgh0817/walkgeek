SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -isystem ${TOOLCHAIN_INC_DIR} -fno-builtin -Wall -Wextra -std=gnu99 -fdata-sections -ffunction-sections")

SET(CMAKE_ASM_FLAGS "")
IF(NOT CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE DEBUG)
    MESSAGE(STATUS "No CMAKE_BUILD_TYPE specified, using default DEBUG")
ENDIF()

SET(CMAKE_C_FLAGS_DEBUG " -ggdb -O0 -Wno-unused-variable -Wno-unused-parameter -Wno-unused-function -Wno-attributes")
SET(CMAKE_CXX_FLAGS_DEBUG " -ggdb -O0")
SET(CMAKE_ASM_FLAGS_DEBUG " -ggdb")

SET(CMAKE_C_FLAGS_RELEASE " -ggdb -O2 -Wno-unused-variable -Wno-unused-parameter -Wno-attributes -Wno-unused-function")
SET(CMAKE_CXX_FLAGS_RELEASE " -ggdb -O2")
SET(CMAKE_ASM_FLAGS_RELEASE " -ggdb")

IF(CMAKE_COMPILER_IS_GNUCC)
  SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fmessage-length=0")
ENDIF(CMAKE_COMPILER_IS_GNUCC)
IF(CMAKE_COMPILER_IS_GNUCXX)
  SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fmessage-length=0")
ENDIF(CMAKE_COMPILER_IS_GNUCXX)