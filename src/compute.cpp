#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>

struct DataPoint {
    double time;
    double voltage;
};

std::vector<DataPoint> readData(const std::string& filename) {
    std::ifstream file(filename);
    std::vector<DataPoint> data;
    std::string line;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        DataPoint point{};
        if (iss >> point.time >> point.voltage) {
            data.push_back(point);
        }
    }
    return data;
}

double computeAverageVoltage(const std::vector<DataPoint>& data) {
    double sum = 0.0;
    for (const auto& point : data) {
        sum += point.voltage;
    }
    return sum / (double)data.size();
}

int main() {
    std::string filename = "ngspice_output.txt";
    std::vector<DataPoint> data = readData(filename);
    double avgVoltage = computeAverageVoltage(data);
    std::cout << "Average Voltage: " << avgVoltage << " V" << std::endl;
    return 0;
}
