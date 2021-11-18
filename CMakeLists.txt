cmake_minimum_required(VERSION 3.8)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(clang-tidy)

enable_testing()

file (GLOB SRC_LIST src/module1.cc)

add_library(${PROJECT_NAME} STATIC ${SRC_LIST})
add_test(NAME cland-tidy-report COMMAND sh -c "clang-tidy ${SRC_LIST} -checks=* -p ${CMAKE_BINARY_DIR}/compile_commands.json | tee clang-tidy-report.txt")
