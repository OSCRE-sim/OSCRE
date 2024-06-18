#include <string>
#include <map>
#include <utility>
#include "FaultModel.h"

FaultModel::FaultModel(std::string type, std::map<std::string, double> parameters)
        : type(std::move(type)), parameters(std::move(parameters)) {}

void FaultModel::defineFaultModel() {
    // Define fault model logic here
}
