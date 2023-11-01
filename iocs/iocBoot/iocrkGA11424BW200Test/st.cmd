#!../../bin/linux-x86_64/rkGA11424BW200Test

#- You may have to change rkGA11424BW200Test to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/rkGA11424BW200Test.dbd"
rkGA11424BW200Test_registerRecordDeviceDriver pdbbase

# Just a testing IP for now
epicsEnvSet(AMP1_IP, "0.0.0.0:1502")
epicsEnvSet(AMP_PORT, "amp1")

# Configure the asyn IP port
# portName, ipAddr, priority, noAutoConnect, noProcessEos
drvAsynIPPortConfigure("${AMP_PORT}", "${AMP1_IP}", 0, 0, 0)

# Configure modbus
# Port name, linkType, timeoutInMsec, writeDelay
modbusInterposeConfig("${AMP_PORT}", 0, 5000, 0)

# Configure the register areas. This is identical for all devices of this type
# Register map is all holding registers, 0x1 to 0xB. Some of these are read-only (0x5 to 0xB)

# drvModbusAsynConfigure(portName, tcpPortName, slaveAddr, modbusFunc, modbusAddrStart, modbusLen, dataType, pollMsec, plcType)
drvModbusAsynConfigure("${AMP_PORT}_InRegs", "${AMP_PORT}", 0, 3, 1, 11, UINT16, 100, "")
drvModbusAsynConfigure("${AMP_PORT}_OutRegs", "${AMP_PORT}", 0, 16, 1, 4, UINT16, 500, "")

# Finally, load the records. P is record prefix, PORT is the asyn port
dbLoadRecords("${rkGA11424BW200}/db/GA11424BW200.db", "P=amp1:, INPORT=${AMP_PORT}_InRegs, OUTPORT=${AMP_PORT}_OutRegs, SCAN='.1 second'")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=jeremy"
