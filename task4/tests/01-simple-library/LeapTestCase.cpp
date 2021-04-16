//
// Created by akhtyamovpavel on 5/1/20.
//

#include "LeapTestCase.h"

#include <Functions.h>

TEST(LeapTestCase, InvalidYear) {
    EXPECT_THROW(IsLeap(-1), std::invalid_argument);
    EXPECT_THROW(IsLeap(-100), std::invalid_argument);
    EXPECT_THROW(IsLeap(-10), std::invalid_argument);
    EXPECT_THROW(IsLeap(0), std::invalid_argument);
}

TEST(LeapTestCase, NotDivisibleByFour) {
    EXPECT_FALSE(IsLeap(3));
    EXPECT_FALSE(IsLeap(2021));
    EXPECT_FALSE(IsLeap(301));
    EXPECT_FALSE(IsLeap(401));
}

TEST(LeapTestCase, DivisibleByFour) {
    EXPECT_TRUE(IsLeap(4));
    EXPECT_TRUE(IsLeap(404));
    EXPECT_TRUE(IsLeap(2004));
    EXPECT_TRUE(IsLeap(2020));
}

TEST(LeapTestCase, DivisibleByFourAndHundred) {
    EXPECT_FALSE(IsLeap(300));
    EXPECT_FALSE(IsLeap(500));
    EXPECT_FALSE(IsLeap(100));
    EXPECT_FALSE(IsLeap(2100));
}

TEST(LeapTestCase, DivisibleByFourHundred) {
    EXPECT_TRUE(IsLeap(400));
    EXPECT_TRUE(IsLeap(2000));
    EXPECT_TRUE(IsLeap(1'000'000));
    EXPECT_TRUE(IsLeap(1'000'000'000));
}

TEST(MonthDaysTestCase, FebruaryNotLeap) {
    EXPECT_EQ(GetMonthDays(2021, 2), 28);
    EXPECT_EQ(GetMonthDays(2200, 2), 28);
}

TEST(MonthDaysTestCase, FebruaryLeap) {
    EXPECT_EQ(GetMonthDays(1'000'000, 2), 29);
    EXPECT_EQ(GetMonthDays(2020, 2), 29);
}

TEST(MonthDaysTestCase, InvalidMonth) {
    EXPECT_THROW(GetMonthDays(-10, -10), std::invalid_argument);
    EXPECT_THROW(GetMonthDays(0, -1), std::invalid_argument);
    EXPECT_THROW(GetMonthDays(-10, 2), std::invalid_argument);
}

TEST(MonthDaysTestCase, Thirty) {
    EXPECT_EQ(GetMonthDays(1'000'000, 4), 30);
    EXPECT_EQ(GetMonthDays(1'000'000, 6), 30);
    EXPECT_EQ(GetMonthDays(1'000'000, 9), 30);
    EXPECT_EQ(GetMonthDays(1'000'000, 11), 30);
}

TEST(MonthDaysTestCase, ThirtyOne) {
    EXPECT_EQ(GetMonthDays(1'000'000, 1), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 3), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 5), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 7), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 8), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 10), 31);
    EXPECT_EQ(GetMonthDays(1'000'000, 12), 31);
}