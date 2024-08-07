#include "InjectionEngine.h"

InjectionEngine::InjectionEngine(const FaultModel& model) : model(model) {}

void InjectionEngine::injectFault(Circuit& circuit, const std::string& location) {
    std::map<std::string, double> faultParameters = model.getParameters();
    circuit.injectFault(location, faultParameters);
}

void InjectionEngine::logFault(Circuit& circuit, const std::string& details) {
    circuit.logFault(details);
}
