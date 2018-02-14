// Add description here
//
// Author: N.N.
// Email: n.n@example.com
// Date: 1900-01-01

#include "AvrUtils.h"

#include "config.h"

#include <avr/io.h>
#include <util/delay.h>

#include "ValveController.h"
#include "PatternFormer.h"

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

    ValveController * controllers[5];
    ValveController controller0(VALVE_0_DATA);
    ValveController controller1(VALVE_1_DATA);
    ValveController controller2(VALVE_2_DATA);
    ValveController controller3(VALVE_3_DATA);
    ValveController controller4(VALVE_4_DATA);
    controllers[0] = &controller0; 
    controllers[1] = &controller1;
    controllers[2] = &controller2;
    controllers[3] = &controller3;
    controllers[4] = &controller4;

    PatternFormer patternFormer(controllers);

    patternFormer.registerEvent(1, {ValveEventType::OPEN, 0, 5});
    patternFormer.registerEvent(10, {ValveEventType::OPEN, 1, 10});
    patternFormer.registerEvent(30, {ValveEventType::OPEN, 2, 2});
    patternFormer.registerEvent(30, {ValveEventType::OPEN, 3, 2});
    patternFormer.registerEvent(35, {ValveEventType::OPEN, 4, 30});
    patternFormer.registerEvent(80, {ValveEventType::END, 0, 0});

    while (true) {

        if (indicatorCounter == INDICATOR_HALF_PERIOD) {
            indicatorCounter = 0;
            toggleIndicator();
        }
        else {
            indicatorCounter++;
        }

        patternFormer.run();

        _delay_ms(LOOP_DELAY);
    }
}
