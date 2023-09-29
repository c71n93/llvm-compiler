cmake_minimum_required(VERSION 3.22.1)

project(game-of-life LANGUAGES CXX)

include_directories(include)

add_executable(game-of-life
    src/main.cpp
)
