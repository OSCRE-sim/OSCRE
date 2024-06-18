#include "Circuit.h"
#include "ComponentModel.h"
#include "TransistorModel.h"  // Include other component models as needed
#include <iostream>

Circuit::Circuit() {}

void Circuit::addComponent(const std::string& name, const std::string& type, std::map<std::string, double> parameters) {
    ComponentModel* component = nullptr;

    if (type == "transistor") {
        component = new TransistorModel(parameters["sensitivity"]);
    }
    // Add other component types as needed

    if (component) {
        components.push_back(component);
        componentMap[name] = component;
    }
}

void Circuit::injectFault(const std::string& location, const std::map<std::string, double>& faultParameters) {
    ComponentModel* component = getComponent(location);
    if (component) {
        component->applyRadiationEffect();  // Adjust to apply specific fault parameters
    }
}

void Circuit::logFault(const std::string& details) {
    // Log fault details (e.g., save to a file or print to console)
    std::cout << "Fault injected: " << details << std::endl;
}

ComponentModel* Circuit::getComponent(const std::string& name) {
    return componentMap.count(name) ? componentMap[name] : nullptr;
}
