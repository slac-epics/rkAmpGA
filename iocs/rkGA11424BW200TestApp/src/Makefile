TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = rkGA11424BW200Test
# rkGA11424BW200Test.dbd will be created and installed
DBD += rkGA11424BW200Test.dbd

# rkGA11424BW200Test.dbd will be made up from these files:
rkGA11424BW200Test_DBD += base.dbd
rkGA11424BW200Test_DBD += asyn.dbd
rkGA11424BW200Test_DBD += modbusSupport.dbd
rkGA11424BW200Test_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#rkGA11424BW200Test_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#rkGA11424BW200Test_LIBS += xxx

# rkGA11424BW200Test_registerRecordDeviceDriver.cpp derives from rkGA11424BW200Test.dbd
rkGA11424BW200Test_SRCS += rkGA11424BW200Test_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
rkGA11424BW200Test_SRCS_DEFAULT += rkGA11424BW200TestMain.cpp
rkGA11424BW200Test_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#rkGA11424BW200Test_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
rkGA11424BW200Test_LIBS += modbus
rkGA11424BW200Test_LIBS += asyn
rkGA11424BW200Test_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

