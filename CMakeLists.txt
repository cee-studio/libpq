cmake_minimum_required(VERSION 3.8.2)

project(Test)
add_subdirectory(libpq)

add_executable(test.exe test.c)
target_link_libraries(test.exe PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq.exe testlibpq.c)
target_link_libraries(testlibpq.exe PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq2.exe testlibpq2.c)
target_link_libraries(testlibpq2.exe PRIVATE PostgreSQL::PostgreSQL)

add_executable(testlibpq3.exe testlibpq3.c)
target_link_libraries(testlibpq3.exe PRIVATE PostgreSQL::PostgreSQL)
