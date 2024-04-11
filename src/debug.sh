#!/bin/bash

function debug {
    (( XICO_SILENT )) && return
    local k="$1";  local v="$2"
    local c=0;     local s="${#k}"
    for x in "$@"; do ((c++ % 2)) || {
        local l="${x/$HOME/\~}"
            (( "${#l}" >= s )) && s="$(( ${#l} + 1 ))"
        };
    done
    while [ "$1" ]; do
        # k="$1"; v="${!k-${2}}"
        k="$1"; v="${2}"
        [ -z "$v" ] && shift && continue; shift
        printf '\e[34m%*s: \e[33m%s\e[0m\n' "-${s}" "$k" "${v/$HOME/\~}"
    done
}
