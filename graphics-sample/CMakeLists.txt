cmake_minimum_required(VERSION 3.22.1)

project(game-of-life LANGUAGES CXX)

include_directories(include)

include(FetchContent)
#### SFML ####
FetchContent_Declare(SFML
        GIT_REPOSITORY https://github.com/SFML/SFML.git
        GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

add_library(sim-graphics)
target_sources(sim-graphics PRIVATE
        src/sim-graphics.cpp
)
target_link_libraries(sim-graphics PUBLIC
    sfml-graphics
)

add_executable(game-of-life src/main.cpp)
target_link_libraries(game-of-life PRIVATE
    sim-graphics
    ${CMAKE_SOURCE_DIR}/third_party/profiler/app.o
    ${CMAKE_SOURCE_DIR}/third_party/profiler/src/prof-functions/log.cpp
)
