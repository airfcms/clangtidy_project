cmake_minimum_required (VERSION 3.8)

project (clangtidy_project) 

set(CMAKE_CXX_CLANG_TIDY /usr/bin/clang-tidy -checks=-*, hicpp-signed-*)
add_executable (clangtidy_project ${CMAKE_CURRENT_SOURCE_DIR}/src/module1.cc)
