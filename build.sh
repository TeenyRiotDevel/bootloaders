#!/bin/bash

CWD=`pwd`

RELEASE=${CWD}/release

RELEASE_MICRO=${RELEASE}/teenyriot-micronucleus
RELEASE_USBTINY=${RELEASE}/teenyriot-usbtiny

mkdir -p ${RELEASE_MICRO}
mkdir -p ${RELEASE_USBTINY}

cd ./develop/micronucleus/firmware
make clean
make CONFIG=t85_teenyriot
cp main.hex ${RELEASE_MICRO}/teenyriot-micronucleus.hex

cd ${CWD}

cd ./develop/usbasp-tiny
make clean
make
cp main.hex ${RELEASE_USBTINY}/teenyriot-usbtiny.hex

cd ${CWD}