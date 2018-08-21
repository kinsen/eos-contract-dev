#!/bin/bash

# Regular Colors
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White
NC='\033[0m'              # No Color

USAGE="${RED}Usage: eos-contract init [projectName]${NC}"
GITURL=https://github.com/kinsen/eos-contract-dev.git

function clone(){
    git clone ${GITURL} $1
}

function init(){
    clone $1;
    cd $PWD/$1;
    rm -rf .git
    rm shell.sh
    
    sed -i -e "s/ProjectName/$1/" CMakeLists.txt
    rm *.txt-e
    sed -i -e "s/hello/$1/" contracts/CMakeLists.txt
    rm contracts/CMakeLists.txt-e

    rm -rf contracts/hello
    mkdir -p contracts/$1
    touch contracts/$1/$1.cpp
    echo "file(GLOB ABI_FILES \"*.abi\")
configure_file(\"\${ABI_FILES}\" \"\${CMAKE_CURRENT_BINARY_DIR}\" COPYONLY)

add_wast_executable(TARGET $1
  INCLUDE_FOLDERS \"\${STANDARD_INCLUDE_FOLDERS}\"
  LIBRARIES \${EOSIO_INCLUDE_PATH}/libc++ \${EOSIO_INCLUDE_PATH}/eosiolib
  DESTINATION_FOLDER \${CMAKE_CURRENT_BINARY_DIR}
)" >> "contracts/$1/CMakeLists.txt"

}

if [ ! $1 ]; then
    echo -e $USAGE
    exit
fi

if [ ! $2 ]; then
    echo -e $USAGE
    exit
fi

init $2;