cmake_minimum_required(VERSION 3.10)
project(CMakeHelper)

option(CMakeHelper_Test "Test CMakeHelper" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(common)
include(logic)
include(git)

if (CMakeHelper_Test)
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/test")
    message(STATUS "==================== Test BEGIN ====================")
    message(STATUS "|------ logic.cmake ------|")
    include(test_logic)
    message(STATUS "|------ git.cmake ------|")
    include(test_git)
    message(STATUS "==================== Test END ====================")
endif ()

