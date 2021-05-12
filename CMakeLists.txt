cmake_minimum_required(VERSION 3.16)

project(Test)
add_subdirectory(libpq)

add_executable(Test test.c)

target_link_libraries(Test PRIVATE PostgreSQL::PostgreSQL)
