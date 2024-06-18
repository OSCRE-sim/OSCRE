#ifndef RAD_HARD_FAULTMODEL_H
#define RAD_HARD_FAULTMODEL_H


class FaultModel {
public:
    FaultModel(std::string type, std::map<std::string, double> parameters);
    void defineFaultModel();
private:
    std::string type;
    std::map<std::string, double> parameters;
};


#endif //RAD_HARD_FAULTMODEL_H
