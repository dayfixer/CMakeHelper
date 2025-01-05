cmake_minimum_required(VERSION 3.10)
project(CMakeHelper)

include(cmake/common.cmake)
include(cmake/git.cmake)

option(CMakeHelper_Test "Test CMakeHelper" ON)

if (NOT CMakeHelper_Test)
    return()
endif ()

message(STATUS "==================== Test BEGIN ====================")

message(STATUS "---- git.cmake ---")
GetGitLastCommitHash(commit_hash)
message(STATUS "GetGitLastCommitHash: ${commit_hash}")
GetGitLastCommitHash(commit_hash 10)
message(STATUS "GetGitLastCommitHash(10Bits): ${commit_hash}")
GetGitLastCommitHash(commit_hash 50)
message(STATUS "GetGitLastCommitHash(50Bits): ${commit_hash}")

GetGitPathLastCommitHash("" commit_hash)
message(STATUS "GetGitPathLastCommitHash: ${commit_hash}")

GetGitCommitCount(commit_count)
message(STATUS "GetGitCommitCount: ${commit_count}")

message(STATUS "==================== Test END ====================")
