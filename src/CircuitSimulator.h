#ifndef RAD_HARD_CIRCUITSIMULATOR_H
#define RAD_HARD_CIRCUITSIMULATOR_H


#include <vector>
#include "ComponentModel.h"

class CircuitSimulator {
public:
    void addComponent(ComponentModel *component);

    void simulateRadiationEffects();

private:
    std::vector<ComponentModel *> components{};
};


#endif //RAD_HARD_CIRCUITSIMULATOR_H
