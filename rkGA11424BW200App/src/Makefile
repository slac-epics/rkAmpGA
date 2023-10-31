TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += rkGA11424BW200

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install rkGA11424BW200.dbd into <top>/dbd
DBD += rkGA11424BW200.dbd

# specify all source files to be compiled and added to the library
#rkGA11424BW200_SRCS += xxx

rkGA11424BW200_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

