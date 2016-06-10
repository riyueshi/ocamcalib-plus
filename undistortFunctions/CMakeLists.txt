cmake_minimum_required(VERSION 3.1)
project(undistortfunctions)

include(CMakePrintHelpers)

if(NOT DEFINED CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 11)
endif()

find_package(OpenCV REQUIRED)

add_library(undistortfunctions
    ocam_functions.cpp ocam_functions.h
    )
target_link_libraries(undistortfunctions
    PRIVATE
        opencv_core opencv_imgcodecs
    PUBLIC
        opencv_highgui
    )

set_target_properties(undistortfunctions PROPERTIES
    OUTPUT_NAME ocam_undistortfunctions
    DEBUG_POSTFIX d
    )

add_executable(example main.cpp)
set_target_properties(example PROPERTIES DEBUG_POSTFIX d)
target_link_libraries(example PRIVATE
    undistortfunctions
    opencv_imgproc)