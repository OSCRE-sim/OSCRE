#ifndef RAD_HARD_CIRCUIT_H
#define RAD_HARD_CIRCUIT_H

#include <vector>
#include <string>
#include <map>
#include "ComponentModel.h"

class Circuit {
public:
    Circuit();

    void addComponent(const std::string& name, const std::string& type, std::map<std::string, double> parameters);
    void injectFault(const std::string& location, const std::map<std::string, double>& faultParameters);
    void logFault(const std::string& details);

    // Method to get a component by its name for fault injection
    ComponentModel* getComponent(const std::string& name);

private:
    std::vector<ComponentModel*> components;
    std::map<std::string, ComponentModel*> componentMap;
};

#endif //RAD_HARD_CIRCUIT_H
