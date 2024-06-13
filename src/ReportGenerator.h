#ifndef RAD_HARD_REPORTGENERATOR_H
#define RAD_HARD_REPORTGENERATOR_H


#include <vector>
#include "DataPoint.h"

class ReportGenerator {

public:
    explicit ReportGenerator(const std::__1::vector<DataPoint> &vector1);

    void generateReport();
};


#endif //RAD_HARD_REPORTGENERATOR_H
