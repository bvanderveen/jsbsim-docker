
set(CMAKE_C_FLAGS "-g -Wall -Werror")
set(CMAKE_INCLUDE_PATH "/opt/jsbsim/include/JSBSim")
set(CMAKE_LIBRARY_PATH "/opt/jsbsim/lib")

link_directories(${CMAKE_LIBRARY_PATH})
include_directories(${CMAKE_INCLUDE_PATH})
add_executable (head main.cpp)

target_link_libraries (head LINK_PUBLIC JSBSim)