//
// Created by Pavel Akhtyamov on 02.05.2020.
//

#pragma once

#include <gmock/gmock.h>
#include <Weather.h>

class WeatherMock : public Weather {
public:
    MOCK_METHOD(cpr::Response, Get, (const std::string& city, const cpr::Url& url), (override));

    cpr::Response MockGet(const std::string& city,
                          const cpr::Url& url,
                          std::int32_t status_code,
                          std::map< std::string, float >* temp,
                          std::map< std::string, float >* forecast);
};


