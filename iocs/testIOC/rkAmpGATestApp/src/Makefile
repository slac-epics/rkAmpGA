TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = rkAmpGATest
# rkAmpGATest.dbd will be created and installed
DBD += rkAmpGATest.dbd

# rkAmpGATest.dbd will be made up from these files:
rkAmpGATest_DBD += base.dbd
rkAmpGATest_DBD += asyn.dbd
rkAmpGATest_DBD += modbusSupport.dbd
rkAmpGATest_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#rkAmpGATest_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#rkAmpGATest_LIBS += xxx

# rkAmpGATest_registerRecordDeviceDriver.cpp derives from rkAmpGATest.dbd
rkAmpGATest_SRCS += rkAmpGATest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
rkAmpGATest_SRCS_DEFAULT += rkAmpGATestMain.cpp
rkAmpGATest_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#rkAmpGATest_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
rkAmpGATest_LIBS += modbus
rkAmpGATest_LIBS += asyn
rkAmpGATest_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

