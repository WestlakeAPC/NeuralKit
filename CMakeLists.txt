cmake_minimum_required(VERSION 3.6)
project(NeuralKit)

set(CMAKE_CXX_STANDARD 11)

add_custom_target(NeuralKit
        COMMAND /usr/bin/swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

add_test(NeuralKitTests
         COMMAND /usr/bin/swift test
         WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})