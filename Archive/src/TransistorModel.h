#ifndef RAD_HARD_TRANSISTORMODEL_H
#define RAD_HARD_TRANSISTORMODEL_H


#include "ComponentModel.h"

class TransistorModel : public ComponentModel {
public:
    explicit TransistorModel(double sensitivity);

    void applyRadiationEffect() override;

private:
    double radiationSensitivity; // Simplified radiation sensitivity parameter
};


#endif //RAD_HARD_TRANSISTORMODEL_H
