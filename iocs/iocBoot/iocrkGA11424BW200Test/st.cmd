#!../../bin/linux-x86_64/rkGA11424BW200Test

#- You may have to change rkGA11424BW200Test to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/rkGA11424BW200Test.dbd"
rkGA11424BW200Test_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadTemplate "db/user.substitutions"
dbLoadRecords "db/rkGA11424BW200TestVersion.db", "user=jeremy"
dbLoadRecords "db/dbSubExample.db", "user=jeremy"

#- Set this to see messages from mySub
#-var mySubDebug 1

#- Run this to trace the stages of iocInit
#-traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=jeremy"
