#ifndef RAD_HARD_PLOTTER_H
#define RAD_HARD_PLOTTER_H


#include <vector>
#include "DataPoint.h"

class Plotter {

public:
    explicit Plotter(const std::__1::vector<DataPoint> &vector1);

    void plotResults();
};


#endif //RAD_HARD_PLOTTER_H
