#include "WeatherMock.h"
#include <functional>

cpr::Response WeatherMock::MockGet(const std::string &city,
                                   const cpr::Url &url,
                                   std::int32_t status_code,
                                   std::map< std::string, float >* temp,
                                   std::map< std::string, float >* forecast) {
    cpr::Response response;
    response.status_code = status_code;

    if(url == "http://api.openweathermap.org/data/2.5/weather") {
        response.text = "{"
                            "\"main\": {"
                                "\"temp\": " + std::to_string((*temp)[city]) +
                            "}"
                        "}";
    } else if(url == "http://api.openweathermap.org/data/2.5/forecast") {
        response.text = "{"
                            "\"list\": [ {}, {}, {}, {}, {}, {}, {}, {"
                                "\"main\": {"
                                    "\"temp\": " + std::to_string((*forecast)[city]) +
                                "}"
                            "}]"
                        "}";
    } else {
        throw std::invalid_argument("Invalid url");
    }

    return response;
}