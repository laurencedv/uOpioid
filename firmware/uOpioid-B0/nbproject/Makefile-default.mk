#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o ${OBJECTDIR}/_ext/271624317/pic32_clock.o ${OBJECTDIR}/_ext/271624317/pic32_timer.o ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o ${OBJECTDIR}/_ext/271624317/pic32_pps.o ${OBJECTDIR}/_ext/271624317/op_interrupt.o ${OBJECTDIR}/_ext/271624317/pic32_spi.o ${OBJECTDIR}/_ext/271624317/pic32_uart.o ${OBJECTDIR}/_ext/271624317/op_output_compare.o ${OBJECTDIR}/_ext/984474361/op_link_layer.o ${OBJECTDIR}/_ext/1472/hardware.o ${OBJECTDIR}/_ext/1472/uOpioid-B0.o ${OBJECTDIR}/_ext/984474361/op_general.o ${OBJECTDIR}/_ext/984474361/op_network_layer.o ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o ${OBJECTDIR}/_ext/984474361/op_session_layer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d ${OBJECTDIR}/_ext/271624317/pic32_clock.o.d ${OBJECTDIR}/_ext/271624317/pic32_timer.o.d ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d ${OBJECTDIR}/_ext/271624317/pic32_pps.o.d ${OBJECTDIR}/_ext/271624317/op_interrupt.o.d ${OBJECTDIR}/_ext/271624317/pic32_spi.o.d ${OBJECTDIR}/_ext/271624317/pic32_uart.o.d ${OBJECTDIR}/_ext/271624317/op_output_compare.o.d ${OBJECTDIR}/_ext/984474361/op_link_layer.o.d ${OBJECTDIR}/_ext/1472/hardware.o.d ${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d ${OBJECTDIR}/_ext/984474361/op_general.o.d ${OBJECTDIR}/_ext/984474361/op_network_layer.o.d ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d ${OBJECTDIR}/_ext/984474361/op_session_layer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o ${OBJECTDIR}/_ext/271624317/pic32_clock.o ${OBJECTDIR}/_ext/271624317/pic32_timer.o ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o ${OBJECTDIR}/_ext/271624317/pic32_pps.o ${OBJECTDIR}/_ext/271624317/op_interrupt.o ${OBJECTDIR}/_ext/271624317/pic32_spi.o ${OBJECTDIR}/_ext/271624317/pic32_uart.o ${OBJECTDIR}/_ext/271624317/op_output_compare.o ${OBJECTDIR}/_ext/984474361/op_link_layer.o ${OBJECTDIR}/_ext/1472/hardware.o ${OBJECTDIR}/_ext/1472/uOpioid-B0.o ${OBJECTDIR}/_ext/984474361/op_general.o ${OBJECTDIR}/_ext/984474361/op_network_layer.o ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o ${OBJECTDIR}/_ext/984474361/op_session_layer.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX150F128B
MP_LINKER_FILE_OPTION=
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o: ../../../../../PIC/C32/device/op_nrf24l01+.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1358829097 
	@${RM} ${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d" -o ${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o ../../../../../PIC/C32/device/op_nrf24l01+.c  
	
${OBJECTDIR}/_ext/271624317/pic32_clock.o: ../../../../../PIC/C32/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_clock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_clock.o ../../../../../PIC/C32/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/271624317/pic32_timer.o: ../../../../../PIC/C32/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_timer.o ../../../../../PIC/C32/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/1319392277/pic32_realtime.o: ../../../../../PIC/C32/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1319392277 
	@${RM} ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o ../../../../../PIC/C32/soft/pic32_realtime.c  
	
${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o: ../../../../../PIC/C32/soft/pic32_ringBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1319392277 
	@${RM} ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d" -o ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o ../../../../../PIC/C32/soft/pic32_ringBuffer.c  
	
${OBJECTDIR}/_ext/271624317/pic32_pps.o: ../../../../../PIC/C32/peripheral/pic32_pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_pps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_pps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_pps.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_pps.o ../../../../../PIC/C32/peripheral/pic32_pps.c  
	
${OBJECTDIR}/_ext/271624317/op_interrupt.o: ../../../../../PIC/C32/peripheral/op_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/op_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/op_interrupt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/op_interrupt.o.d" -o ${OBJECTDIR}/_ext/271624317/op_interrupt.o ../../../../../PIC/C32/peripheral/op_interrupt.c  
	
${OBJECTDIR}/_ext/271624317/pic32_spi.o: ../../../../../PIC/C32/peripheral/pic32_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_spi.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_spi.o ../../../../../PIC/C32/peripheral/pic32_spi.c  
	
${OBJECTDIR}/_ext/271624317/pic32_uart.o: ../../../../../PIC/C32/peripheral/pic32_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_uart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_uart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_uart.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_uart.o ../../../../../PIC/C32/peripheral/pic32_uart.c  
	
${OBJECTDIR}/_ext/271624317/op_output_compare.o: ../../../../../PIC/C32/peripheral/op_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/op_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/op_output_compare.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/op_output_compare.o.d" -o ${OBJECTDIR}/_ext/271624317/op_output_compare.o ../../../../../PIC/C32/peripheral/op_output_compare.c  
	
${OBJECTDIR}/_ext/984474361/op_link_layer.o: ../../../Stack/op_link_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_link_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_link_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_link_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_link_layer.o ../../../Stack/op_link_layer.c  
	
${OBJECTDIR}/_ext/1472/hardware.o: ../hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hardware.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/hardware.o.d" -o ${OBJECTDIR}/_ext/1472/hardware.o ../hardware.c  
	
${OBJECTDIR}/_ext/1472/uOpioid-B0.o: ../uOpioid-B0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d" -o ${OBJECTDIR}/_ext/1472/uOpioid-B0.o ../uOpioid-B0.c  
	
${OBJECTDIR}/_ext/984474361/op_general.o: ../../../Stack/op_general.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_general.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_general.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_general.o.d" -o ${OBJECTDIR}/_ext/984474361/op_general.o ../../../Stack/op_general.c  
	
${OBJECTDIR}/_ext/984474361/op_network_layer.o: ../../../Stack/op_network_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_network_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_network_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_network_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_network_layer.o ../../../Stack/op_network_layer.c  
	
${OBJECTDIR}/_ext/984474361/op_presentation_layer.o: ../../../Stack/op_presentation_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o ../../../Stack/op_presentation_layer.c  
	
${OBJECTDIR}/_ext/984474361/op_session_layer.o: ../../../Stack/op_session_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_session_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_session_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_session_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_session_layer.o ../../../Stack/op_session_layer.c  
	
else
${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o: ../../../../../PIC/C32/device/op_nrf24l01+.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1358829097 
	@${RM} ${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o.d" -o ${OBJECTDIR}/_ext/1358829097/op_nrf24l01+.o ../../../../../PIC/C32/device/op_nrf24l01+.c  
	
${OBJECTDIR}/_ext/271624317/pic32_clock.o: ../../../../../PIC/C32/peripheral/pic32_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_clock.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_clock.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_clock.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_clock.o ../../../../../PIC/C32/peripheral/pic32_clock.c  
	
${OBJECTDIR}/_ext/271624317/pic32_timer.o: ../../../../../PIC/C32/peripheral/pic32_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_timer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_timer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_timer.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_timer.o ../../../../../PIC/C32/peripheral/pic32_timer.c  
	
${OBJECTDIR}/_ext/1319392277/pic32_realtime.o: ../../../../../PIC/C32/soft/pic32_realtime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1319392277 
	@${RM} ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1319392277/pic32_realtime.o.d" -o ${OBJECTDIR}/_ext/1319392277/pic32_realtime.o ../../../../../PIC/C32/soft/pic32_realtime.c  
	
${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o: ../../../../../PIC/C32/soft/pic32_ringBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1319392277 
	@${RM} ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o.d" -o ${OBJECTDIR}/_ext/1319392277/pic32_ringBuffer.o ../../../../../PIC/C32/soft/pic32_ringBuffer.c  
	
${OBJECTDIR}/_ext/271624317/pic32_pps.o: ../../../../../PIC/C32/peripheral/pic32_pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_pps.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_pps.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_pps.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_pps.o ../../../../../PIC/C32/peripheral/pic32_pps.c  
	
${OBJECTDIR}/_ext/271624317/op_interrupt.o: ../../../../../PIC/C32/peripheral/op_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/op_interrupt.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/op_interrupt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/op_interrupt.o.d" -o ${OBJECTDIR}/_ext/271624317/op_interrupt.o ../../../../../PIC/C32/peripheral/op_interrupt.c  
	
${OBJECTDIR}/_ext/271624317/pic32_spi.o: ../../../../../PIC/C32/peripheral/pic32_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_spi.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_spi.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_spi.o ../../../../../PIC/C32/peripheral/pic32_spi.c  
	
${OBJECTDIR}/_ext/271624317/pic32_uart.o: ../../../../../PIC/C32/peripheral/pic32_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/pic32_uart.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/pic32_uart.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/pic32_uart.o.d" -o ${OBJECTDIR}/_ext/271624317/pic32_uart.o ../../../../../PIC/C32/peripheral/pic32_uart.c  
	
${OBJECTDIR}/_ext/271624317/op_output_compare.o: ../../../../../PIC/C32/peripheral/op_output_compare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/271624317 
	@${RM} ${OBJECTDIR}/_ext/271624317/op_output_compare.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/271624317/op_output_compare.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/271624317/op_output_compare.o.d" -o ${OBJECTDIR}/_ext/271624317/op_output_compare.o ../../../../../PIC/C32/peripheral/op_output_compare.c  
	
${OBJECTDIR}/_ext/984474361/op_link_layer.o: ../../../Stack/op_link_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_link_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_link_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_link_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_link_layer.o ../../../Stack/op_link_layer.c  
	
${OBJECTDIR}/_ext/1472/hardware.o: ../hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hardware.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hardware.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/hardware.o.d" -o ${OBJECTDIR}/_ext/1472/hardware.o ../hardware.c  
	
${OBJECTDIR}/_ext/1472/uOpioid-B0.o: ../uOpioid-B0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/uOpioid-B0.o.d" -o ${OBJECTDIR}/_ext/1472/uOpioid-B0.o ../uOpioid-B0.c  
	
${OBJECTDIR}/_ext/984474361/op_general.o: ../../../Stack/op_general.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_general.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_general.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_general.o.d" -o ${OBJECTDIR}/_ext/984474361/op_general.o ../../../Stack/op_general.c  
	
${OBJECTDIR}/_ext/984474361/op_network_layer.o: ../../../Stack/op_network_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_network_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_network_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_network_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_network_layer.o ../../../Stack/op_network_layer.c  
	
${OBJECTDIR}/_ext/984474361/op_presentation_layer.o: ../../../Stack/op_presentation_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_presentation_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_presentation_layer.o ../../../Stack/op_presentation_layer.c  
	
${OBJECTDIR}/_ext/984474361/op_session_layer.o: ../../../Stack/op_session_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/984474361 
	@${RM} ${OBJECTDIR}/_ext/984474361/op_session_layer.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/984474361/op_session_layer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -mips16 -I"C:/Users/icyo/Dropbox/Electro/PIC/C32" -I"C:/Users/icyo/Dropbox/Electro/PIC/Header" -I"../" -I"D:/My Dropbox/Electro/PIC/C32" -I"D:/My Dropbox/Electro/PIC/Header" -I"D:/My Dropbox/Electro/OpIUM/Developement/Stack" -O3 -Wall -MMD -MF "${OBJECTDIR}/_ext/984474361/op_session_layer.o.d" -o ${OBJECTDIR}/_ext/984474361/op_session_layer.o ../../../Stack/op_session_layer.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=16384,--defsym=_min_stack_size=1024,--gc-sections 
else
dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16384,--defsym=_min_stack_size=1024,--gc-sections
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/uOpioid-B0.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
