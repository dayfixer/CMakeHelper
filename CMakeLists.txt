cmake_minimum_required(VERSION 3.10)
project(CMakeHelper)

option(CMakeHelper_Test "Test CMakeHelper" ON)

include(cmake/common.cmake)
include(cmake/git.cmake)
if (CMakeHelper_Test)
    include(test/test_git.cmake)
endif ()
