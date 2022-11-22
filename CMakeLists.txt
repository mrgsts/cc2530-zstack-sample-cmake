cmake_minimum_required(VERSION 3.22)

# Set the project name, [description] and [version],
# while enabling its required languages
project(ZSTACK_APP
  DESCRIPTION "CC2530 Z-Stack App"
  VERSION 1.0.0
  LANGUAGES C ASM )

# Fallback option for generators other than `Ninja Multi-Config`
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

# Enable CTest
#enable_testing()

add_custom_target(
    version_timestamp
    COMMAND python ver.py > /dev/null
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    COMMENT "Inserting timestamp into src/version.c"
)

SET(VENDOR_DIR ${PROJECT_SOURCE_DIR}/vendor)
SET(ZSTACK_DIR ${PROJECT_SOURCE_DIR}/vendor/Z-Stack_3.0.2)
SET(ZSTACK_LIB_DIR ${PROJECT_SOURCE_DIR}/vendor/zstack-lib)

SET(APP_SRC
  ${VENDOR_DIR}/BME280_driver/bme280.c
  ${ZSTACK_LIB_DIR}/hal_key.c
  src/OSAL_App.c
  src/version.c
  src/zcl_app.c
  src/zcl_app_data.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb_FindingAndBinding.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb_Reporting.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb_tlCommissioning.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb_touchlink.c
  ${ZSTACK_DIR}/Components/stack/bdb/bdb_touchlink_initiator.c
  ${ZSTACK_DIR}/Components/hal/common/hal_assert.c
  ${ZSTACK_DIR}/Components/hal/common/hal_drivers.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_adc.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_dma.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_flash.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_lcd.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_led.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_sleep.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_startup.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_timer.c
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/hal_uart.c
  ${ZSTACK_DIR}/Components/mac/high_level/mac_cfg.c
  ${ZSTACK_DIR}/Components/mac/high_level/mac_high_level.h
  ${ZSTACK_DIR}/Components/mac/high_level/mac_pib.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_autopend.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_backoff_timer.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_low_level.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_radio.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_rx.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_rx_onoff.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_sleep.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/mac_tx.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/mac_csp_tx.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/mac_mcu.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/mac_mem.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/mac_radio_defs.c
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/mac_rffrontend.c
  ${ZSTACK_DIR}/Components/mt/MT.c
  ${ZSTACK_DIR}/Components/mt/MT_AF.c
  ${ZSTACK_DIR}/Components/mt/MT_APP.c
  ${ZSTACK_DIR}/Components/mt/MT_APP_CONFIG.c
  ${ZSTACK_DIR}/Components/mt/MT_DEBUG.c
  ${ZSTACK_DIR}/Components/mt/MT_GP.c
  ${ZSTACK_DIR}/Components/mt/MT_NWK.c
  ${ZSTACK_DIR}/Components/mt/MT_SAPI.c
  ${ZSTACK_DIR}/Components/mt/MT_SYS.c
  ${ZSTACK_DIR}/Components/mt/MT_TASK.c
  ${ZSTACK_DIR}/Components/mt/MT_UART.c
  ${ZSTACK_DIR}/Components/mt/MT_UTIL.c
  ${ZSTACK_DIR}/Components/mt/MT_ZDO.c
  ${ZSTACK_DIR}/Components/stack/nwk/BindingTable.c
  ${ZSTACK_DIR}/Components/stack/nwk/nwk_globals.c
  ${ZSTACK_DIR}/Components/stack/nwk/stub_aps.c
  ${ZSTACK_DIR}/Components/stack/sys/ZDiags.c
  ${ZSTACK_DIR}/Components/stack/sys/ZGlobals.c
  ${ZSTACK_DIR}/Components/osal/common/OSAL.c
  ${ZSTACK_DIR}/Components/osal/common/OSAL_Clock.c
  ${ZSTACK_DIR}/Components/osal/mcu/cc2530/OSAL_Math.s51
  ${ZSTACK_DIR}/Components/osal/common/OSAL_Memory.c
  ${ZSTACK_DIR}/Components/osal/mcu/cc2530/OSAL_Nv.c
  ${ZSTACK_DIR}/Components/osal/common/OSAL_PwrMgr.c
  ${ZSTACK_DIR}/Components/osal/common/OSAL_Timers.c
  ${ZSTACK_DIR}/Components/stack/af/AF.c
  ${ZSTACK_DIR}/Components/stack/zcl/zcl.c
  ${ZSTACK_DIR}/Components/stack/zcl/zcl_general.c
  ${ZSTACK_DIR}/Projects/zstack/HomeAutomation/Source/zcl_ha.c
  ${ZSTACK_DIR}/Components/stack/zcl/zcl_lighting.c
  ${ZSTACK_DIR}/Components/services/saddr/saddr.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDApp.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDConfig.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDNwkMgr.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDObject.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDProfile.c
  ${ZSTACK_DIR}/Components/stack/zdo/ZDSecMgr.c
  ${ZSTACK_DIR}/Components/zmac/f8w/zmac.c
  ${ZSTACK_DIR}/Components/zmac/f8w/zmac_cb.c
)

# Z-Stack Zmain Group
SET(ZMAIN_SRC
  ${ZSTACK_DIR}/Projects/zstack/ZMain/TI2530DB/chipcon_cstartup.s51
  ${ZSTACK_DIR}/Projects/zstack/ZMain/TI2530DB/OnBoard.c
  ${ZSTACK_DIR}/Projects/zstack/ZMain/TI2530DB/ZMain.c
)

# zstack-lib source
SET(ZSTACK_LIB_SRC
  ${ZSTACK_LIB_DIR}/bettery.c
  ${ZSTACK_LIB_DIR}/commissioning.c
  ${ZSTACK_LIB_DIR}/Debug.c
  ${ZSTACK_LIB_DIR}/ds18b20.c
  ${ZSTACK_LIB_DIR}/factory_reset.c
  ${ZSTACK_LIB_DIR}/hal_i2c.c
  ${ZSTACK_LIB_DIR}/inttempsens.c
  ${ZSTACK_LIB_DIR}/utils.c
)

add_executable(zstackapp
)

add_dependencies(zstackapp version_timestamp)

target_sources(zstackapp PRIVATE
  ${ZSTACK_LIB_SRC}
  ${ZMAIN_SRC}
  ${APP_SRC}
)

SET(ZSTACK_CFGS
  -f${ZSTACK_DIR}/Projects/zstack/Tools/CC2530DB/f8wEndev.cfg
  -f${ZSTACK_DIR}/Projects/zstack/Tools/CC2530DB/f8wZCL.cfg
  -f${ZSTACK_LIB_DIR}/f8wConfig.cfg
)

SET(ZSTACK_INCLUDES
  ${ZSTACK_DIR}/Projects/zstack/HomeAutomation/Source/
  ${ZSTACK_DIR}/Projects/zstack/ZMain/TI2530DB/
  ${ZSTACK_DIR}/Components/hal/include/
  ${ZSTACK_DIR}/Components/hal/target/CC2530EB/
  ${ZSTACK_DIR}/Components/mac/include/
  ${ZSTACK_DIR}/Components/mac/high_level/
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/
  ${ZSTACK_DIR}/Components/mac/low_level/srf04/single_chip/
  ${ZSTACK_DIR}/Components/mt/
  ${ZSTACK_DIR}/Components/osal/include/
  ${ZSTACK_DIR}/Components/services/saddr/
  ${ZSTACK_DIR}/Components/services/sdata/
  ${ZSTACK_DIR}/Components/stack/af/
  ${ZSTACK_DIR}/Components/stack/bdb/
  ${ZSTACK_DIR}/Components/stack/GP/
  ${ZSTACK_DIR}/Components/stack/nwk/
  ${ZSTACK_DIR}/Components/stack/sapi/
  ${ZSTACK_DIR}/Components/stack/sec/
  ${ZSTACK_DIR}/Components/stack/sys/
  ${ZSTACK_DIR}/Components/stack/zcl/
  ${ZSTACK_DIR}/Components/stack/zdo/
  ${ZSTACK_DIR}/Components/zmac/
  ${ZSTACK_DIR}/Components/zmac/f8w/
)

SET(APP_INCLUDES
  .
  src/
)

SET(CUSTOM_INCLUDES
  ${ZSTACK_LIB_DIR}
  ${VENDOR_DIR}/BME280_driver/
)

target_include_directories(zstackapp PRIVATE 
  ${CUSTOM_INCLUDES}
  ${ZSTACK_INCLUDES}
  ${APP_INCLUDES}
)

set_target_properties(zstackapp PROPERTIES SUFFIX ".hex")

#target_compile_definitions(zstackapp PUBLIC USE_ASM=1)

# Set compile options for the target
target_compile_options(zstackapp PRIVATE
	$<$<COMPILE_LANGUAGE:C>:-D HAL_BOARD_PWS --diag_suppress Pe001,Pa010 -e --debug --core=plain --dptr=16,1 --data_model=large --code_model=banked --calling_convention=xdata_reentrant --place_constants=data_rom --nr_virtual_regs 24 --preinclude ../src/preinclude.h ${ZSTACK_CFGS} --require_prototypes>
	$<$<COMPILE_LANGUAGE:ASM>:-v0 -D__CORE__=1 -D__CODE_MODEL__=2 -D__DATA_MODEL__=2 -D__CALLING_CONVENTION__=4 -D__NUMBER_OF_DPTRS__=1 -s+ -w+ -M<$<ANGLE-R> -I"C:\\Program Files\\IAR Systems\\Embedded Workbench 8.0\\8051\\SRC\\LIB\\">
	)

# Set the link options for the target
target_link_options(zstackapp PRIVATE
  #-rt
  #  -xmsn
  -we24=i
  -e_small_write=_formatted_write
  -e_medium_read=_formatted_read
  -Fintel-extended
  -Oraw-binary=${CMAKE_CURRENT_BINARY_DIR}/$<TARGET_FILE_BASE_NAME:zstackapp>.bin
  -s __program_start "C:\\Program Files\\IAR Systems\\Embedded Workbench 8.0\\8051\\LIB\\CLIB\\cl-pli-blxd-1e16x01.r51"
  -I"C:\\Program Files\\IAR Systems\\Embedded Workbench 8.0\\8051\\LIB\\"
  -I"C:\\Program Files\\IARSystems\\Embedded Workbench 8.0\\8051\\CONFIG\\"
  -C ${ZSTACK_DIR}/Projects/zstack/Libraries/TI2530DB/bin/EndDevice-Pro.lib
  -C ${ZSTACK_DIR}/Projects/zstack/Libraries/TI2530DB/bin/Security.lib
  -C ${ZSTACK_DIR}/Projects/zstack/Libraries/TIMAC/bin/TIMAC-CC2530.lib
  -f ${ZSTACK_DIR}/Projects/zstack/Tools/CC2530DB/f8w2530.xcl
  # The `SHELL:` prefix prevents option de-duplication
  "SHELL:-D_NR_OF_VIRTUAL_REGISTERS=18"
  "SHELL:-D?PBANK=0x93"
  "SHELL:-D?CBANK=0x9F"
  "SHELL:-D?CBANK_MASK=0xFF"
  "SHELL:-D_CODEBANK_START=0x8000"
  "SHELL:-D_CODEBANK_END=0xFFFF"
  "SHELL:-D_NR_OF_BANKS=0x07"
  "SHELL:-D_IDATA_STACK_SIZE=0xC0"
  "SHELL:-D?ESP=0"
  "SHELL:-D?ESP_MASK=0"
  "SHELL:-D_EXTENDED_STACK_START=0"
  "SHELL:-D_EXTENDED_STACK_SIZE=0"
  "SHELL:-D_PDATA_STACK_SIZE=0x80"
  "SHELL:-D_XDATA_STACK_SIZE=0x500"
  "SHELL:-D_XDATA_HEAP_SIZE=0x00"
  "SHELL:-D_FAR_HEAP_SIZE=0x000"
  "SHELL:-D_HUGE_HEAP_SIZE=0x000"
  "SHELL:-D_FAR22_HEAP_SIZE=0xFFF"
  "SHELL:-e?BCALL_FF=?BCALL"
  "SHELL:-e?BRET_FF=?BRET"
  "SHELL:-e?BDISPATCH_FF=?BDISPATCH"
)
