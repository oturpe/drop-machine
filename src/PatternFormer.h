#include "config.h"

/// \enum ValveEventType
///
/// Type of valve event
enum ValveEventType {
    // Nothing happens
    NONE,
    // Valve opens
    OPEN,
    //Signals the end of pattern sequence. Starts from the beginnng again.
    END
};

/// \struct ValveEvent
///
/// Single opening 
struct ValveEvent {
    // Valve event type
    ValveEventType type;
    // Index of affected valve. Applicable if this in an Open event.
    uint8_t valveIndex;
    // Open period. Applicable if this is an Open event.
    uint32_t openPeriod;
};

class ValveController;

/// \class PatternFormer
///
/// Controls multiple ValveController instances to create various drop patterns.
class PatternFormer {
public:
    ///\brief
    ///    Initializes a new pattern former attached to given valve controllers.
    ///
    /// \param controllers
    ///    Pointers to valve controllers
    PatternFormer(
        ValveController * controllers[]
    );

public:
    /// \brief
    ///    Registers a ValveEvent to be executed at given instant.
    ///
    /// \param instant
    ///    Event instant
    ///
    /// \param event
    ///    Valve event
    void registerEvent(uint32_t instant, ValveEvent event);

    /// \brief
    ///    Increases the counter and runs corresponding valve events if found
    ///    from the events list.
    void run();

private:
    /// \brief
    ///    Runs given event
    void runEvent(ValveEvent event);

private:
    /// Pointers to controllers
    ValveController * controllers[5];

    // Counter of event sequence progress
    uint32_t counter;

    /// Instants when corresponding events from events variable occur
    uint32_t instants[SEQUENCE_LENGTH];

    // Events in the sequence
    ValveEvent events[SEQUENCE_LENGTH];
};
