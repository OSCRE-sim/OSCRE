cmake_minimum_required(VERSION 3.28)
project(RAD_HARD)

set(CMAKE_CXX_STANDARD 14)

include_directories(./include)

add_executable(RAD_HARD
        src/compute.cpp
        src/TransistorModel.h
        src/TransistorModel.cpp
        src/main.cpp
        src/CircuitSimulator.cpp
        src/CircuitSimulator.h
        src/ComponentModel.h
        src/Plotter.cpp
        src/Plotter.h
        src/DataPoint.cpp
        src/DataPoint.h
        src/ReportGenerator.cpp
        src/ReportGenerator.h
        src/FaultModel.cpp
        src/FaultModel.h
        src/InjectionEngine.cpp
        src/InjectionEngine.h
        src/Circuit.cpp
        src/Circuit.h)
