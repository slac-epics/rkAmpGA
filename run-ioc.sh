#!/usr/bin/env bash

pushd "$(dirname "$0")"
cd iocs/iocBoot/iocrkGA11424BW200Test
if [ -z $DEBUGGER ]; then
    ./st.cmd
else
    $DEBUGGER ../../bin/$EPICS_HOST_ARCH/rkGA11424BW200Test st.cmd
fi

