find_package(OpenCV REQUIRED)

add_library(undistortfunctions
    ocam_functions.cpp ocam_functions.h
    )
target_link_libraries(undistortfunctions
    PUBLIC opencv_core
    )

set_target_properties(undistortfunctions PROPERTIES
    OUTPUT_NAME ocam_undistortfunctions
    DEBUG_POSTFIX d
    )

install(TARGETS undistortfunctions EXPORT ocam-targets
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin)
install(FILES ocam_functions.h DESTINATION include)
target_include_directories(undistortfunctions PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>)

if (BUILD_TESTING)
    add_executable(example main.cpp)
    set_target_properties(example PROPERTIES DEBUG_POSTFIX d)
    target_link_libraries(example PRIVATE
        undistortfunctions
        opencv_imgproc
        opencv_highgui
        opencv_imgcodecs
    )
endif()
