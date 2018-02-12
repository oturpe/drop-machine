#include <avr/io.h>

#include "PatternFormer.h"
#include "ValveController.h"

PatternFormer::PatternFormer(
    ValveController * controllers[]
) :
    counter(0) {

    for (int i = 0; i < 5; i++) {
        this->controllers[i] = controllers[i];
    }
}

void PatternFormer::registerEvent(uint32_t instant, ValveEvent event) {
    uint8_t index = 0;
    while (instants[index]) {
        index++;
    }

    instants[index] = instant;
    events[index] = event;
}

void PatternFormer::run() {
    counter++;

    uint8_t index = 0;
    uint32_t instant = instants[index];
    while(instant) {
        if(counter == instant) {
            runEvent(events[index]);
        }

    instant =instants[++index];
    }

    uint8_t controllerIndex = 0;
    while (controllers[controllerIndex]) {
        ValveController controller = *controllers[controllerIndex];
        controller.run();
        controllerIndex++;
    }
}

void PatternFormer::runEvent(ValveEvent event) {
    ValveController & controller = *controllers[event.valveIndex];

    switch(event.type) {
    case NONE:
        return;

    case OPEN:
        controller.open(event.openPeriod);
        return;

    case END:
        counter = 0;
        return;

    default:
        return;
    }
}
