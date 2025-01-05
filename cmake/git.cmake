## Hash

function(GetGitLastCommitHash OutputStr)
    execute_process(
            COMMAND git rev-parse HEAD
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
            OUTPUT_VARIABLE GIT_COMMIT_HASH
            OUTPUT_STRIP_TRAILING_WHITESPACE
    )

    if (ARGN)
        string(REGEX MATCH "^[0-9]+$" IS_DIGIT ${ARGN})
        if (IS_DIGIT)
            string(SUBSTRING ${GIT_COMMIT_HASH} 0 ${ARGN} TEMP)
            set(${OutputStr} ${TEMP} PARENT_SCOPE)
        endif ()
    else ()
        set(${OutputStr} ${GIT_COMMIT_HASH} PARENT_SCOPE)
    endif ()
endfunction()

function(GetGitPathLastCommitHash InputRelPath OutputStr)
    execute_process(
            COMMAND git log -1 --format=%H ${InputRelPath}
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
            OUTPUT_VARIABLE GIT_COMMIT_HASH
            OUTPUT_STRIP_TRAILING_WHITESPACE
    )

    if (ARGN)
        string(REGEX MATCH "^[0-9]+$" IS_DIGIT ${ARGN})
        if (IS_DIGIT)
            string(SUBSTRING ${GIT_COMMIT_HASH} 0 ${ARGN} TEMP)
            set(${OutputStr} ${TEMP} PARENT_SCOPE)
        endif ()
    else ()
        set(${OutputStr} ${GIT_COMMIT_HASH} PARENT_SCOPE)
    endif ()
endfunction()

## Commit count

function(GetGitCommitCount OutputInt)
    execute_process(
            COMMAND git rev-list --count HEAD
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
            OUTPUT_VARIABLE GIT_COMMIT_COUNT
            OUTPUT_STRIP_TRAILING_WHITESPACE
    )
    set(${OutputInt} ${GIT_COMMIT_COUNT} PARENT_SCOPE)
endfunction()