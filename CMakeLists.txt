cmake_minimum_required(VERSION 3.16)

project(Test)
add_subdirectory(libpq)

add_executable(test test.c)
target_link_libraries(test PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq testlibpq.c)
target_link_libraries(testlibpq PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq2 testlibpq2.c)
target_link_libraries(testlibpq2 PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq3 testlibpq3.c)
target_link_libraries(testlibpq3 PRIVATE PostgreSQL::PostgreSQL)
