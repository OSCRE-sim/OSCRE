#ifndef RAD_HARD_INJECTIONENGINE_H
#define RAD_HARD_INJECTIONENGINE_H


#include <string>
#include "FaultModel.h"

class InjectionEngine {
public:
    InjectionEngine(const FaultModel& model);
    void injectFault(Circuit& circuit, std::string location);
    void logFault(std::string details);
private:
    FaultModel model;
};


#endif //RAD_HARD_INJECTIONENGINE_H
