
#pragma once

#include <gtest/gtest.h>
#include "WeatherMock.h"

class WeatherTestCase : public ::testing::Test {
public:
    void SetUp();

protected:
    testing::NiceMock<WeatherMock> weather;
    std::map<std::string, float> temp, forecast;
};


