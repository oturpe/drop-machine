#include <avr/io.h>

#include "AvrUtils.h"

#include "config.h"

//#include <avr/io.h>
//#include <util.delay.h>

#include "ValveController.h"

ValveController::ValveController(uint8_t mosfetPin) : 
    pin(mosfetPin),
    openPeriod(0) {
}

void ValveController::run() {
    // If the valve is already closed, there is nothing to do.
    if (!openPeriod) {
        return;
    }

    openPeriod--;

    // If the open period concluded right now, close the valve.
    if (!openPeriod) {
        PORTD &= ~BV(pin);
    }
}

void ValveController::open(uint16_t period) {
    PORTD |= BV(pin);
    openPeriod = period;
}
