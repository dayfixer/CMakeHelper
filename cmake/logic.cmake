
function(SetExclude InputOption Flag)
    if (${ARGN})
        Y_GetNegativeValue(NOT_FLAG ${Flag})
        foreach (arg IN LISTS ${ARGN})
            set(${arg} ${NOT_FLAG} PARENT_SCOPE)
        endforeach ()
    endif ()
    set(${InputOption} ${Flag} PARENT_SCOPE)
endfunction()