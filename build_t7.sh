#!/bin/bash

ADDITIONAL_FLAGS=--export-binaries

# === Term 7 ===
echo "0_LED_n_Button"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 0_LED_n_Button $ADDITIONAL_FLAGS
T7_RESULT_0=$?

echo "1_USB_Serial_ByPass_for_GNSS"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 1_USB_Serial_ByPass_for_GNSS $ADDITIONAL_FLAGS
T7_RESULT_1=$?

echo "2_USB_Serial_ByPass_for_EM2050"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 2_USB_Serial_ByPass_for_EM2050 $ADDITIONAL_FLAGS
T7_RESULT_2=$?

echo "3_Sensors_I2C_Scanner"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 3_Sensors_I2C_Scanner $ADDITIONAL_FLAGS
T7_RESULT_3=$?

echo "4_Sensors_BME280"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 4_Sensors_BME280 $ADDITIONAL_FLAGS
T7_RESULT_4=$?

echo "5_Sensors_BME680"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 5_Sensors_BME680 $ADDITIONAL_FLAGS
T7_RESULT_5=$?

echo "6_Sensors_KX023"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 6_Sensors_KX023 $ADDITIONAL_FLAGS
T7_RESULT_6=$?

echo "7_GNSS_MicroNMEA"
arduino-cli compile -b leat-echostar-terminals:stm32:EchoT7 7_GNSS_MicroNMEA $ADDITIONAL_FLAGS
T7_RESULT_7=$?


# Printing results
echo "==================="
COUNTER=0
TOTAL=0

if [ $T7_RESULT_0 -eq 0 ]
then
	echo "Term 7 - 0_LED_n_Button: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 0_LED_n_Button: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_1 -eq 0 ]
then
	echo "Term 7 - 1_USB_Serial_ByPass_for_GNSS: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 1_USB_Serial_ByPass_for_GNSS: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_2 -eq 0 ]
then
	echo "Term 7 - 2_USB_Serial_ByPass_for_EM2050: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 2_USB_Serial_ByPass_for_EM2050: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_3 -eq 0 ]
then
	echo "Term 7 - 3_Sensors_I2C_Scanner: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 3_Sensors_I2C_Scanner: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_4 -eq 0 ]
then
	echo "Term 7 - 4_Sensors_BME280: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 4_Sensors_BME280: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_5 -eq 0 ]
then
	echo "Term 7 - 5_Sensors_BME680: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 5_Sensors_BME680: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_6 -eq 0 ]
then
	echo "Term 7 - 6_Sensors_KX023: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 6_Sensors_KX023: FAIL"
fi
TOTAL=$((TOTAL+1))

if [ $T7_RESULT_7 -eq 0 ]
then
	echo "Term 7 - 7_GNSS_MicroNMEA: PASS"
	COUNTER=$((COUNTER+1))
else
	echo "Term 7 - 7_GNSS_MicroNMEA: FAIL"
fi
TOTAL=$((TOTAL+1))

echo "==================="
echo "Pass $COUNTER / $TOTAL"

exit 0