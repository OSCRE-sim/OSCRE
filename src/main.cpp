#include <iostream>
#include "TransistorModel.h"
#include "CircuitSimulator.h"
#include "ReportGenerator.h"
#include "Plotter.h"
#include "DataPoint.h"
#include "Circuit.h"
#include "FaultModel.h"
#include "InjectionEngine.h"

std::vector<DataPoint> readData(const std::string &basicString);

int main() {
    CircuitSimulator simulator;
    Circuit circuit;
    FaultModel faultModel("transistor_fault", {{"sensitivity", 0.1}});

    // Add components to the circuit
    TransistorModel transistor(0.1);
    circuit.addComponent("T1", &transistor);

    // Inject fault using InjectionEngine
    InjectionEngine injector(faultModel);
    injector.injectFault(circuit, "T1");

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
