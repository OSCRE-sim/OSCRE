#include "FaultModel.h"

FaultModel::FaultModel(const std::string& type, const std::map<std::string, double>& parameters)
        : type(type), parameters(parameters) {}

std::map<std::string, double> FaultModel::getParameters() const {
    return parameters;
}

void FaultModel::defineFaultModel() {
    // Define fault model logic
}
