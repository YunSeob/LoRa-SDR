INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_LORAGW LoRaGW)

FIND_PATH(
    LORAGW_INCLUDE_DIRS
    NAMES LoRaGW/api.h
    HINTS $ENV{LORAGW_DIR}/include
        ${PC_LORAGW_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    LORAGW_LIBRARIES
    NAMES gnuradio-LoRaGW
    HINTS $ENV{LORAGW_DIR}/lib
        ${PC_LORAGW_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/LoRaGWTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LORAGW DEFAULT_MSG LORAGW_LIBRARIES LORAGW_INCLUDE_DIRS)
MARK_AS_ADVANCED(LORAGW_LIBRARIES LORAGW_INCLUDE_DIRS)
