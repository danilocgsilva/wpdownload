#!/bin/bash

## version
VERSION="0.0.1"

## WordPress latest package address
WPLATESTADDRESS="http://wordpress.org/latest.zip"

wpdownload () {
    uget $WPLATESTADDRESS
}

## detect if being sourced and
## export if so else execute
## main function with args
if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f wpdownload
else
  wpdownload "${@}"
  exit $?
fi
