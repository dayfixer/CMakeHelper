
message(STATUS "==================== Test BEGIN ====================")

message(STATUS "---- git.cmake ---")
GetGitLastCommitHash(commit_hash)
message(STATUS "GetGitLastCommitHash: ${commit_hash}")
GetGitLastCommitHash(commit_hash 10)
message(STATUS "GetGitLastCommitHash(10Bits): ${commit_hash}")
GetGitLastCommitHash(commit_hash 50)
message(STATUS "GetGitLastCommitHash(50Bits): ${commit_hash}")

set(Y_TEST_RELPATH "cmake")
GetGitPathLastCommitHash(${Y_TEST_RELPATH} commit_hash)
message(STATUS "GetGitPathLastCommitHash: ${Y_TEST_RELPATH} - ${commit_hash}")

GetGitCommitCount(commit_count)
message(STATUS "GetGitCommitCount: ${commit_count}")
GetGitPathCommitCount(${Y_TEST_RELPATH} commit_count)
message(STATUS "GetGitPathCommitCount: ${Y_TEST_RELPATH} - ${commit_count}")

GetGitPathTimeStamp(${CMAKE_SOURCE_DIR} commit_timestamp)
message(STATUS "GetGitPathTimeStamp: ${CMAKE_SOURCE_DIR} - ${commit_timestamp}")
GetGitPathTimeStamp(${Y_TEST_RELPATH} commit_timestamp)
message(STATUS "GetGitPathTimeStamp: ${Y_TEST_RELPATH} - ${commit_timestamp}")

message(STATUS "==================== Test END ====================")
