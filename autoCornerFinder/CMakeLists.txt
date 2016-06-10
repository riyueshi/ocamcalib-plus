cmake_minimum_required(VERSION 3.1)
project(autocornerfinder)

include(CMakePrintHelpers)

if(NOT DEFINED CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 11)
endif()

find_package(OpenCV REQUIRED)

add_executable(FindCorners
    cvcalibinit3.cpp cvcalibinit3.h
    main.cpp)

target_link_libraries(FindCorners PRIVATE
    ${OpenCV_LIBS})

set_target_properties(FindCorners PROPERTIES
    DEBUG_POSTFIX d)
