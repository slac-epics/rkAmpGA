TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += rkAmpGA

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install rkAmpGA.dbd into <top>/dbd
#DBD += rkAmpGA.dbd

# specify all source files to be compiled and added to the library
#rkAmpGA_SRCS += xxx

rkAmpGA_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

