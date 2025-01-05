

GetGitLastCommitHash(commit_hash)
message(STATUS "GetGitLastCommitHash: ${commit_hash}")
GetGitLastCommitHash(commit_hash 10)
message(STATUS "GetGitLastCommitHash(10Bits): ${commit_hash}")
GetGitLastCommitHash(commit_hash 50)
message(STATUS "GetGitLastCommitHash(50Bits): ${commit_hash}")

set(Y_TEST_RELPATH "${CMAKE_SOURCE_DIR}/cmake")
GetGitPathLastCommitHash(${Y_TEST_RELPATH} commit_hash)
message(STATUS "GetGitPathLastCommitHash: ${Y_TEST_RELPATH} - ${commit_hash}")

GetGitCommitCount(commit_count)
message(STATUS "GetGitCommitCount: ${commit_count}")
GetGitPathCommitCount(${Y_TEST_RELPATH} commit_count)
message(STATUS "GetGitPathCommitCount: ${Y_TEST_RELPATH} - ${commit_count}")

GetGitPathLastTimeStamp(${CMAKE_SOURCE_DIR} commit_timestamp)
message(STATUS "GetGitPathLastTimeStamp: ${CMAKE_SOURCE_DIR} - ${commit_timestamp}")
GetGitPathLastTimeStamp(${Y_TEST_RELPATH} commit_timestamp)
message(STATUS "GetGitPathLastTimeStamp: ${Y_TEST_RELPATH} - ${commit_timestamp}")

GetGitPathLastCommitter(${Y_TEST_RELPATH} commit_committer)
message(STATUS "GetGitPathLastCommitter: ${Y_TEST_RELPATH} - ${commit_committer}")

