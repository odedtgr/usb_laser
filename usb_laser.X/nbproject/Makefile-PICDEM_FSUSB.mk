#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PICDEM_FSUSB.mk)" "nbproject/Makefile-local-PICDEM_FSUSB.mk"
include nbproject/Makefile-local-PICDEM_FSUSB.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PICDEM_FSUSB
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=app_device_custom_hid.c app_led_usb_status.c buttons.c leds.c main.c pwm.c system.c usb_descriptors.c usb_device.c usb_device_hid.c usb_events.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/app_device_custom_hid.p1 ${OBJECTDIR}/app_led_usb_status.p1 ${OBJECTDIR}/buttons.p1 ${OBJECTDIR}/leds.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/pwm.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/usb_descriptors.p1 ${OBJECTDIR}/usb_device.p1 ${OBJECTDIR}/usb_device_hid.p1 ${OBJECTDIR}/usb_events.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/app_device_custom_hid.p1.d ${OBJECTDIR}/app_led_usb_status.p1.d ${OBJECTDIR}/buttons.p1.d ${OBJECTDIR}/leds.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/pwm.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/usb_descriptors.p1.d ${OBJECTDIR}/usb_device.p1.d ${OBJECTDIR}/usb_device_hid.p1.d ${OBJECTDIR}/usb_events.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/app_device_custom_hid.p1 ${OBJECTDIR}/app_led_usb_status.p1 ${OBJECTDIR}/buttons.p1 ${OBJECTDIR}/leds.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/pwm.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/usb_descriptors.p1 ${OBJECTDIR}/usb_device.p1 ${OBJECTDIR}/usb_device_hid.p1 ${OBJECTDIR}/usb_events.p1

# Source Files
SOURCEFILES=app_device_custom_hid.c app_led_usb_status.c buttons.c leds.c main.c pwm.c system.c usb_descriptors.c usb_device.c usb_device_hid.c usb_events.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PICDEM_FSUSB.mk ${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/app_device_custom_hid.p1: app_device_custom_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_custom_hid.p1.d 
	@${RM} ${OBJECTDIR}/app_device_custom_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/app_device_custom_hid.p1 app_device_custom_hid.c 
	@-${MV} ${OBJECTDIR}/app_device_custom_hid.d ${OBJECTDIR}/app_device_custom_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_device_custom_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_led_usb_status.p1: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/app_led_usb_status.p1 app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/app_led_usb_status.d ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/buttons.p1: buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buttons.p1.d 
	@${RM} ${OBJECTDIR}/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/buttons.p1 buttons.c 
	@-${MV} ${OBJECTDIR}/buttons.d ${OBJECTDIR}/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/leds.p1: leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/leds.p1.d 
	@${RM} ${OBJECTDIR}/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/leds.p1 leds.c 
	@-${MV} ${OBJECTDIR}/leds.d ${OBJECTDIR}/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pwm.p1: pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.p1.d 
	@${RM} ${OBJECTDIR}/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/pwm.p1 pwm.c 
	@-${MV} ${OBJECTDIR}/pwm.d ${OBJECTDIR}/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_descriptors.p1: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_descriptors.p1 usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/usb_descriptors.d ${OBJECTDIR}/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_device.p1: usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_device.p1 usb_device.c 
	@-${MV} ${OBJECTDIR}/usb_device.d ${OBJECTDIR}/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_device_hid.p1: usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_device_hid.p1 usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/usb_device_hid.d ${OBJECTDIR}/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_events.p1: usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_events.p1 usb_events.c 
	@-${MV} ${OBJECTDIR}/usb_events.d ${OBJECTDIR}/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/app_device_custom_hid.p1: app_device_custom_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_device_custom_hid.p1.d 
	@${RM} ${OBJECTDIR}/app_device_custom_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/app_device_custom_hid.p1 app_device_custom_hid.c 
	@-${MV} ${OBJECTDIR}/app_device_custom_hid.d ${OBJECTDIR}/app_device_custom_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_device_custom_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/app_led_usb_status.p1: app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/app_led_usb_status.p1 app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/app_led_usb_status.d ${OBJECTDIR}/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/buttons.p1: buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/buttons.p1.d 
	@${RM} ${OBJECTDIR}/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/buttons.p1 buttons.c 
	@-${MV} ${OBJECTDIR}/buttons.d ${OBJECTDIR}/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/leds.p1: leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/leds.p1.d 
	@${RM} ${OBJECTDIR}/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/leds.p1 leds.c 
	@-${MV} ${OBJECTDIR}/leds.d ${OBJECTDIR}/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pwm.p1: pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.p1.d 
	@${RM} ${OBJECTDIR}/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/pwm.p1 pwm.c 
	@-${MV} ${OBJECTDIR}/pwm.d ${OBJECTDIR}/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/system.p1 system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_descriptors.p1: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_descriptors.p1 usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/usb_descriptors.d ${OBJECTDIR}/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_device.p1: usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_device.p1 usb_device.c 
	@-${MV} ${OBJECTDIR}/usb_device.d ${OBJECTDIR}/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_device_hid.p1: usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_device_hid.p1 usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/usb_device_hid.d ${OBJECTDIR}/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usb_events.p1: usb_events.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usb_events.p1 usb_events.c 
	@-${MV} ${OBJECTDIR}/usb_events.d ${OBJECTDIR}/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-7dc0-7fff -mram=default,-3f4-3ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.map  -DXPRJ_PICDEM_FSUSB=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -maddrqual=require -xassembler-with-cpp -I"../demo_src" -I"../../../../../../framework/usb/inc" -I"../../../../../../bsp/picdem_fs_usb" -I"." -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/usb_laser.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
