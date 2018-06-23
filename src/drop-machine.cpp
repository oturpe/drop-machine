// Firmware for a machine producing a pattern of rain drops using solenoid
// valves.
//
// Author: Otto Urpelainen
// Email: oturpe@iki.fi
// Date: 2018-02-16

#include "AvrUtils.h"

#include "config.h"

#include <avr/io.h>
#include <util/delay.h>

#include "ValveController.h"

uint32_t indicatorCounter = 0;

/// \brief
///    Toggles the indicator led state.
void toggleIndicator() {
    static bool lit;

    if (lit) {
        INDICATOR_DATA &= ~BV(INDICATOR_DATA_PIN);
    }
    else {
        INDICATOR_DATA |= BV(INDICATOR_DATA_PIN);
    }

    lit = !lit;
}

int main() {
    INDICATOR_DATA_DIR |= BV(INDICATOR_DATA_DIR_PIN);

    VALVE_0_DATA_DIR |= BV(VALVE_0_DATA_DIR_PIN);
    VALVE_1_DATA_DIR |= BV(VALVE_1_DATA_DIR_PIN);
    VALVE_2_DATA_DIR |= BV(VALVE_2_DATA_DIR_PIN);
    VALVE_3_DATA_DIR |= BV(VALVE_3_DATA_DIR_PIN);
    VALVE_4_DATA_DIR |= BV(VALVE_4_DATA_DIR_PIN);

    ValveController controller0(VALVE_0_DATA_REF, VALVE_0_DATA_PIN);
    ValveController controller1(VALVE_1_DATA_REF, VALVE_1_DATA_PIN);
    ValveController controller2(VALVE_2_DATA_REF, VALVE_2_DATA_PIN);
    ValveController controller3(VALVE_3_DATA_REF, VALVE_3_DATA_PIN);
    ValveController controller4(VALVE_4_DATA_REF, VALVE_4_DATA_PIN);

    uint32_t patternCounter = 0;

    while (true) {

        if (indicatorCounter == INDICATOR_HALF_PERIOD) {
            indicatorCounter = 0;
            toggleIndicator();
        }
        else {
            indicatorCounter++;
        }

        patternCounter++;
        if (patternCounter == 1) {
            controller0.open(DROP_SIZE);
        }
        else if (patternCounter == 10*DROP_FREQUENCY_MULTIPLIER) {
            controller1.open(DROP_SIZE);
        }
        else if (patternCounter == 20*DROP_FREQUENCY_MULTIPLIER) {
            controller3.open(DROP_SIZE);
        }
        else if (patternCounter == 30*DROP_FREQUENCY_MULTIPLIER) {
            controller1.open(DROP_SIZE);
            controller2.open(DROP_SIZE);
            controller3.open(DROP_SIZE);
        }
        else if (patternCounter == 32*DROP_FREQUENCY_MULTIPLIER) {
            controller0.open(DROP_SIZE);
        }
        else if (patternCounter == 42*DROP_FREQUENCY_MULTIPLIER) {
            controller0.open(DROP_SIZE);
            controller1.open(DROP_SIZE);
            controller2.open(DROP_SIZE);
            controller3.open(DROP_SIZE);
        }
        else if (patternCounter == 62*DROP_FREQUENCY_MULTIPLIER) {
            // End of sequence, start from beginning again
            patternCounter = 0;
        }

        controller0.run();
        controller1.run();
        controller2.run();
        controller3.run();
        controller4.run();

        _delay_ms(LOOP_DELAY);
    }
}
