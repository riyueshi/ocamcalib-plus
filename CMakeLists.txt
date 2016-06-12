cmake_minimum_required(VERSION 3.1)
project(ocam)

if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 11)
endif()

add_subdirectory(autoCornerFinder)
add_subdirectory(undistortFunctions)

install(EXPORT ocam-targets DESTINATION lib/cmake/ocam
    NAMESPACE ocam::)

file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/hide/ocam-config.cmake" "
find_package(OpenCV REQUIRED)
include(\${CMAKE_CURRENT_LIST_DIR}/ocam-targets.cmake)
")

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/hide/ocam-config.cmake
    DESTINATION lib/cmake/ocam)

