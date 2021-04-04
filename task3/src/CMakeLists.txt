add_library(buffer SHARED buffer.cpp)

set_target_properties(buffer PROPERTIES BUILD_WITH_INSTALL_RPATH TRUE)

install(TARGETS buffer
        LIBRARY DESTINATION lib
)
