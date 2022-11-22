# CC2530 Z-Stack CMake App

based on the following projects:
 - https://github.com/IARSystems/cmake-tutorial
 - https://github.com/gregdavill/flower-mon

## Notes
Build config is 'MinSizeRel' with -Ohz optimization

## Buildlog

```
-- The C compiler identification is IAR 8051 10.20.1
-- The ASM compiler identification is IAR 8051 10.20.1
-- Found assembler: C:/Program Files/IAR Systems/Embedded Workbench 8.0/8051/bin/a8051.exe
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: C:/Program Files/IAR Systems/Embedded Workbench 8.0/8051/bin/icc8051.exe - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: Z:/workdir/build
[1/90] Building ASM object CMakeFiles\zstackapp.dir\MinSizeR....0.2\Projects\zstack\ZMain\TI2530DB\chipcon_cstartup.s51.obj
[1/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel...r\Z-Stack_3.0.2\Projects\zstack\ZMain\TI2530DB\OnBoard.c.r51
[1/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel...dor\Z-Stack_3.0.2\Projects\zstack\ZMain\TI2530DB\ZMain.c.r51
[2/90] Building ASM object CMakeFiles\zstackapp.dir\MinSizeR....0.2\Projects\zstack\ZMain\TI2530DB\chipcon_cstartup.s51.obj
[6/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel...Stack_3.0.2\Components\stack\bdb\bdb_FindingAndBinding.c.r51
[7/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\zstack-lib\bettery.c.r51

  #define INP
          ^
"Z:\workdir\vendor\Z-Stack_3.0.2\Components\osal\include\comdef.h",63  Warning[Pe047]:
          incompatible redefinition of macro "INP" (declared at line 10 of
          "Z:\workdir\vendor\zstack-lib\utils.h")
[7/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\bdb\bdb_Reporting.c.r51
[8/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel...Z-Stack_3.0.2\Components\stack\bdb\bdb_tlCommissioning.c.r51
[9/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\bdb\bdb_touchlink.c.r51
[10/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\zstack-lib\commissioning.c.r51

  static void zclCommissioning_BindNotification(bdbBindNotificationData_t *data) {
              ^
"Z:\workdir\vendor\zstack-lib\commissioning.c",175  Warning[Pe177]: function
          "zclCommissioning_BindNotification" was declared but never referenced
[10/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Components\stack\bdb\bdb_touchlink_initiator.c.r51
[11/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\hal\common\hal_assert.c.r51
[12/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...dor\Z-Stack_3.0.2\Projects\zstack\ZMain\TI2530DB\ZMain.c.r51
[12/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\hal\common\hal_drivers.c.r51
[13/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_adc.c.r51
[14/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Projects\zstack\ZMain\TI2530DB\OnBoard.c.r51
[14/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_dma.c.r51
[15/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_flash.c.r51
[16/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_lcd.c.r51
[17/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\stack\bdb\bdb_tlCommissioning.c.r51
[17/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_led.c.r51
[18/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\hal\common\hal_assert.c.r51


          HAL_TURN_ON_LED1();
          ^
"Z:\workdir\vendor\Z-Stack_3.0.2\Components\hal\common\hal_assert.c",245  Warning[Pe128]:
          loop is not reachable
[18/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_sleep.c.r51
[19/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Stack_3.0.2\Components\hal\target\CC2530EB\hal_startup.c.r51
[20/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\bdb\bdb_touchlink.c.r51
[20/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_timer.c.r51
[21/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_adc.c.r51
[21/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_uart.c.r51
[22/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_dma.c.r51
[22/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\mac\high_level\mac_cfg.c.r51
[23/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\hal\common\hal_drivers.c.r51
[23/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\mac\high_level\mac_pib.c.r51
[24/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Components\stack\bdb\bdb_touchlink_initiator.c.r51
[24/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...tack_3.0.2\Components\mac\low_level\srf04\mac_autopend.c.r51
[25/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_flash.c.r51
[25/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...3.0.2\Components\mac\low_level\srf04\mac_backoff_timer.c.r51
[26/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\src\zcl_app.c.r51

  static void zclApp_IntTempSens(void);
              ^
"Z:\workdir\src\zcl_app.c",81  Warning[Pe177]: function "zclApp_IntTempSens"
          was declared but never referenced
[26/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Components\mac\low_level\srf04\mac_low_level.c.r51
[27/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_lcd.c.r51
[27/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_radio.c.r51
[28/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Stack_3.0.2\Components\stack\bdb\bdb_FindingAndBinding.c.r51
[28/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...or\Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_rx.c.r51
[29/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_timer.c.r51
[29/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...tack_3.0.2\Components\mac\low_level\srf04\mac_rx_onoff.c.r51
[30/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Stack_3.0.2\Components\hal\target\CC2530EB\hal_startup.c.r51
[30/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_sleep.c.r51
[31/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\mac\high_level\mac_cfg.c.r51
[31/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...or\Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_tx.c.r51
[32/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_sleep.c.r51
[32/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...\Components\mac\low_level\srf04\single_chip\mac_csp_tx.c.r51
[33/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...r\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_led.c.r51
[33/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...0.2\Components\mac\low_level\srf04\single_chip\mac_mcu.c.r51
[34/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Components\mac\low_level\srf04\mac_low_level.c.r51
[34/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...0.2\Components\mac\low_level\srf04\single_chip\mac_mem.c.r51
[35/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...3.0.2\Components\mac\low_level\srf04\mac_backoff_timer.c.r51
[35/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ponents\mac\low_level\srf04\single_chip\mac_radio_defs.c.r51
[36/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\mac\high_level\mac_pib.c.r51
[36/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ponents\mac\low_level\srf04\single_chip\mac_rffrontend.c.r51
[37/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...\Z-Stack_3.0.2\Components\hal\target\CC2530EB\hal_uart.c.r51
[38/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...tack_3.0.2\Components\mac\low_level\srf04\mac_autopend.c.r51
[39/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_radio.c.r51
[40/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_sleep.c.r51
[41/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...tack_3.0.2\Components\mac\low_level\srf04\mac_rx_onoff.c.r51
[43/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...or\Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_tx.c.r51
[44/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...0.2\Components\mac\low_level\srf04\single_chip\mac_mem.c.r51
[45/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ponents\mac\low_level\srf04\single_chip\mac_radio_defs.c.r51
[46/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ponents\mac\low_level\srf04\single_chip\mac_rffrontend.c.r51
[47/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...\Components\mac\low_level\srf04\single_chip\mac_csp_tx.c.r51
[48/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...0.2\Components\mac\low_level\srf04\single_chip\mac_mcu.c.r51
[49/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...or\Z-Stack_3.0.2\Components\mac\low_level\srf04\mac_rx.c.r51
[50/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\nwk\BindingTable.c.r51
[51/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\nwk\nwk_globals.c.r51
[56/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Clock.c.r51
[57/90] Building ASM object CMakeFiles\zstackapp.dir\MinSize...r\Z-Stack_3.0.2\Components\osal\mcu\cc2530\OSAL_Math.s51.obj
[58/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Memory.c.r51
[59/90] Building ASM object CMakeFiles\zstackapp.dir\MinSize...r\Z-Stack_3.0.2\Components\osal\mcu\cc2530\OSAL_Math.s51.obj
[59/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\mcu\cc2530\OSAL_Nv.c.r51
[60/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\bdb\bdb_Reporting.c.r51
[60/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_PwrMgr.c.r51
[61/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Timers.c.r51
[64/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\zcl\zcl_general.c.r51
[65/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\nwk\nwk_globals.c.r51
[65/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Projects\zstack\HomeAutomation\Source\zcl_ha.c.r51
[66/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\zcl\zcl_lighting.c.r51
[67/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Memory.c.r51
[68/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Clock.c.r51
[69/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_PwrMgr.c.r51
[72/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\common\OSAL_Timers.c.r51
[74/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\nwk\BindingTable.c.r51
[75/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\zcl\zcl_general.c.r51
[76/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRe...ack_3.0.2\Projects\zstack\HomeAutomation\Source\zcl_ha.c.r51
[78/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\osal\mcu\cc2530\OSAL_Nv.c.r51
[82/90] Building C object CMakeFiles\zstackapp.dir\MinSizeRel\vendor\Z-Stack_3.0.2\Components\stack\zcl\zcl_lighting.c.r51
[90/90] Linking C executable MinSizeRel\zstackapp.hex

     IAR Universal Linker V6.5.2.97
     Copyright 1987-2017 IAR Systems AB.

 172 196 bytes of CODE  memory
      41 bytes of DATA  memory (+ 76 absolute )
   7 279 bytes of XDATA memory
     192 bytes of IDATA memory
       8 bits  of BIT   memory
   1 663 bytes of CONST memory

Errors: none
Warnings: none
```
