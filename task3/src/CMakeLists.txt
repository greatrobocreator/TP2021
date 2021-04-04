add_library(buffer SHARED buffer.cpp)

set_target_properties(buffer PROPERTIES 
                      BUILD_WITH_INSTALL_RPATH TRUE
                      PUBLIC_HEADER ../include/buffer.h
)

install(TARGETS buffer
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        PUBLIC_HEADER DESTINATION include
)
