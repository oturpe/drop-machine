// This is the configuration file. Ideally, any configuration and calibration
// of the device should be done by changing this file only.

// Needed by util/delay.h
#define F_CPU 1000000UL

// Delay between two executions of main loop, given in millisecond.
#define LOOP_DELAY 100

// Definition of indicator pin data direction and data ports and pins
#define INDICATOR_DATA_DIR DDRD
#define INDICATOR_DATA_DIR_PIN DDD6
#define INDICATOR_DATA PORTD
#define INDICATOR_DATA_PIN PORTD6

// Half length of one complete indicator period. In other words, the time the
// indicator spends on and off. Given in units of LOOP_DELAY.
#define INDICATOR_HALF_PERIOD 5

// Definition of valve control pins
#define VALVE_0_DATA_DIR DDRD
#define VALVE_0_DATA_DIR_PIN DDD0
#define VALVE_0_DATA PORTD
#define VALVE_0_DATA_PIN PORTD0
#define VALVE_1_DATA_DIR DDRD
#define VALVE_1_DATA_DIR_PIN DDD1
#define VALVE_1_DATA PORTD
#define VALVE_1_DATA_PIN PORTD1
#define VALVE_2_DATA_DIR DDRD
#define VALVE_2_DATA_DIR_PIN DDD2
#define VALVE_2_DATA PORTD
#define VALVE_2_DATA_PIN PORTD2
#define VALVE_3_DATA_DIR DDRD
#define VALVE_3_DATA_DIR_PIN DDD3
#define VALVE_3_DATA PORTD
#define VALVE_3_DATA_PIN PORTD3
#define VALVE_4_DATA_DIR DDRD
#define VALVE_4_DATA_DIR_PIN DDD4
#define VALVE_4_DATA PORTD
#define VALVE_4_DATA_PIN PORTD4

/// How many events can fit in the total choreography
#define SEQUENCE_LENGTH 16
