#include "WeatherTestCase.h"
#include "WeatherMock.h"


void WeatherTestCase::SetUp() {
    using std::placeholders::_1;
    using std::placeholders::_2;

    weather.SetApiKey("Some key");

    ON_CALL(weather,
            Get
    ).WillByDefault(std::bind(&WeatherMock::MockGet, &weather, _1, _2, 200, &temp, &forecast));
}

TEST(WeatherTest, BadStatus) {

    testing::NiceMock<WeatherMock> weather;

    cpr::Response response;
    response.status_code = 404;

    ON_CALL(weather,
            Get
    ).WillByDefault(testing::Return(response));

    EXPECT_THROW(weather.GetTomorrowDiff("London"), std::invalid_argument);
}

TEST_F(WeatherTestCase, GetTomorrowDiff) {
    temp["London"] = 50.0;

    forecast["London"] = 100.0;
    EXPECT_EQ(weather.GetTomorrowDiff("London"), "The weather in London tomorrow will be much warmer than today.");

    forecast["London"] = 51.0;
    EXPECT_EQ(weather.GetTomorrowDiff("London"), "The weather in London tomorrow will be warmer than today.");

    forecast["London"] = 49.0;
    EXPECT_EQ(weather.GetTomorrowDiff("London"), "The weather in London tomorrow will be colder than today.");

    forecast["London"] = 0.0;
    EXPECT_EQ(weather.GetTomorrowDiff("London"), "The weather in London tomorrow will be much colder than today.");

    forecast["London"] = 50.0;
    EXPECT_EQ(weather.GetTomorrowDiff("London"), "The weather in London tomorrow will be the same than today.");
}

TEST_F(WeatherTestCase, GetDifferenceString) {
    temp["London"] = 50.0;

    temp["Moscow"] = 100.0;
    EXPECT_EQ(weather.GetDifferenceString("London", "Moscow"), "Weather in London is colder than in Moscow by 50 degrees");

    temp["Moscow"] = 0.0;
    EXPECT_EQ(weather.GetDifferenceString("London", "Moscow"), "Weather in London is warmer than in Moscow by 50 degrees");
}