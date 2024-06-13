#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include "TransistorModel.h"
#include "CircuitSimulator.h"
#include "ReportGenerator.h"
#include "Plotter.h"
#include "DataPoint.h"

std::vector<DataPoint> readData(const std::string &basicString);

int main() {
    CircuitSimulator simulator;

    // Create and add a transistor model
    TransistorModel transistor(0.1);
    simulator.addComponent(&transistor);

    // Simulate radiation effects
    simulator.simulateRadiationEffects();

    // Load simulation data
    std::string filename = "ngspice_output.txt";
    std::vector<DataPoint> data = readData(filename);

    // Generate and plot results
    ReportGenerator report(data);
    report.generateReport();

    Plotter plot(data);
    plot.plotResults();

    return 0;
}

std::vector<DataPoint> readData(const std::string &basicString) {

    return {};
}
