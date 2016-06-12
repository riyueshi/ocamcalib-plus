find_package(OpenCV REQUIRED)

add_executable(FindCorners
    cvcalibinit3.cpp cvcalibinit3.h
    main.cpp)

target_link_libraries(FindCorners PRIVATE
    ${OpenCV_LIBS})

set_target_properties(FindCorners PROPERTIES
    DEBUG_POSTFIX d)
