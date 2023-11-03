#!/usr/bin/env bash

pushd "$(dirname "$0")"
cd iocs/testIOC/iocBoot/iocrkAmpGATest
if [ -z $DEBUGGER ]; then
    ./st.cmd
else
    $DEBUGGER ../../bin/$EPICS_HOST_ARCH/rkAmpGATest st.cmd
fi

