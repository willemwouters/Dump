#!/bin/bash



#TT_CANbusControl_test script strasbourg-MMCAN-Radio.script

while true; do



TT_CANbusControl_test uudt 0x58f 0x800230C000000000



sleep 1



TT_CANbusControl_test uudt 0x568 0x0000000000030400



sleep 1



TT_CANbusControl_test uudt 0x558 0x0100000000000000



sleep 1



TT_CANbusControl_test uudt 0x578 0x0000000000000000



sleep 1



done
