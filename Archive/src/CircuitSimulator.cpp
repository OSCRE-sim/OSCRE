#include "CircuitSimulator.h"
#include "ComponentModel.h"

void CircuitSimulator::addComponent(ComponentModel *component) {
    components.push_back(component);
}

void CircuitSimulator::simulateRadiationEffects() {
    for (ComponentModel *&component: components) {
        component->applyRadiationEffect();
    }
    // Further circuit-level analysis
}
