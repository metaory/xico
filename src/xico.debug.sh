#!/bin/bash

function xico_debug {
  while [ "$1" ]; do
    k="${1}"; v="${!1}"

    [ -z "$v" ] && v="${STATE[$1]}"
    [ -z "$v" ] && shift && v=$1
    printf "\e[34m%13s \e[32m%s\e[0m\n" "$k" "${v}"
    shift
  done
}
