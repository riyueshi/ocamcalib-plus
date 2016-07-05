set(scm https://scm.adasworks.com/r)
set(sts ${scm}/thirdparty/src)
set(gh  https://github.com)

add_pkg(Eigen3 GIT_URL ${gh}/adasworks/eigen-release GIT_TAG fork-3.x
    CMAKE_ARGS -DBUILD_TESTING=0)
add_pkg(Ceres GIT_URL ${gh}/adasworks/ceres-solver
    CMAKE_ARGS -DCXX11=1 -DBUILD_TESTING=0 -DBUILD_EXAMPLES=0
    DEPENDS Eigen3)
add_pkg(aw-matlib GIT_URL ${scm}/~csaba.sipos/aw-matlib)
