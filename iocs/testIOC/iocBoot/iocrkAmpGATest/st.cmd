#!../../bin/linux-x86_64/rkAmpGATest

#- You may have to change rkGA11424BW200Test to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/rkAmpGATest.dbd"
rkAmpGATest_registerRecordDeviceDriver pdbbase

# Just a testing IP for now
epicsEnvSet(AMP_IP, "0.0.0.0:1502")
epicsEnvSet(AMP_PORT, "amp1")
epicsEnvSet(AMP_PREFIX, "amp1:")

# See amp.cmd for the actual setup
< "${RKAMPGA}/db/GA11424BW200.iocsh"

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=jeremy"
