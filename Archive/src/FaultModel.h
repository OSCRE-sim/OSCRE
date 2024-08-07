#ifndef RAD_HARD_FAULTMODEL_H
#define RAD_HARD_FAULTMODEL_H

#include <string>
#include <map>

class FaultModel {
public:
    FaultModel(const std::string& type, const std::map<std::string, double>& parameters);
    std::map<std::string, double> getParameters() const;
    void defineFaultModel();

private:
    std::string type;
    std::map<std::string, double> parameters;
};

#endif //RAD_HARD_FAULTMODEL_H
