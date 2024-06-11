cmake_minimum_required(VERSION 3.28)
project(RAD_HARD)

set(CMAKE_CXX_STANDARD 14)

include_directories(./include)

add_executable(RAD_HARD
        src/compute.cpp)
