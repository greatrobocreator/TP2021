//
// Created by akhtyamovpavel on 5/1/20.
//


#pragma once

#include <gtest/gtest.h>
#include <boost/filesystem/path.hpp>
#include <boost/filesystem.hpp>

using boost::filesystem::path;
using boost::filesystem::exists;
using boost::filesystem::is_directory;

class TreeTestCase : public ::testing::Test {
public:
    static void SetUpTestCase();
    //void SetUp();
    //void TearDown();
    static void TearDownTestCase();

protected:
    static path tempFolder;
};


