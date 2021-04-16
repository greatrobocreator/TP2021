#include "TreeTestCase.h"
#include "Tree.h"

path TreeTestCase::tempFolder;

void TreeTestCase::SetUpTestCase() {
    tempFolder = boost::filesystem::temp_directory_path() / boost::filesystem::unique_path();
    boost::filesystem::create_directory(tempFolder);
    std::cout << "Temp folder: " << tempFolder.string() << " created!" << std::endl;
}

void TreeTestCase::TearDownTestCase() {
    if (exists(tempFolder)) {
        //boost::filesystem::remove_all(tempPath);
    }
}

TEST_F(TreeTestCase, PathNotExist) {
    EXPECT_THROW(GetTree(boost::filesystem::unique_path().string(), false), std::invalid_argument);
    EXPECT_THROW(GetTree((tempFolder / boost::filesystem::unique_path()).string(), true),
                 std::invalid_argument);
}

TEST_F(TreeTestCase, PathIsNotDir) {
    path filePath = tempFolder / boost::filesystem::unique_path();
    std::ofstream(filePath.string()).close();
    EXPECT_THROW(GetTree(filePath.string(), true), std::invalid_argument);
}

TEST_F(TreeTestCase, DirsOnly) {
    std::ofstream((tempFolder / boost::filesystem::unique_path()).string()).close();
    boost::filesystem::create_directory(tempFolder / boost::filesystem::unique_path());
    GetTree(tempFolder.string(), true);
}

TEST_F(TreeTestCase, NotDirsOnly) {
    std::ofstream((tempFolder / boost::filesystem::unique_path()).string()).close();
    boost::filesystem::create_directory(tempFolder / boost::filesystem::unique_path());
    GetTree(tempFolder.string(), false);
}

TEST_F(TreeTestCase, FilterEmptyNodes) {
    for(int i: {1, 2}) {
        path folder = tempFolder / ("folder" + std::to_string(i));
        boost::filesystem::create_directory(folder);
        folder = folder / "folder";
        boost::filesystem::create_directory(folder);
        std::ofstream((folder / "file1").string()).close();
        boost::filesystem::create_directory(folder / "innerFolder");
        std::ofstream((folder / "innerFolder" / "file2").string()).close();
    }
    path folder1 = tempFolder / "folder1" / "folder";
    path folder2 = tempFolder / "folder2" / "folder";
    boost::filesystem::create_directory(folder2 / "someEmptyFolder");
    boost::filesystem::create_directory(folder2 / "innerFolder" / "someEmptyFolder2");
    FileNode tree1 = GetTree(folder1.string(), false);
    FileNode tree2 = GetTree(folder2.string(), false);
    EXPECT_FALSE(tree1 == tree2);
    FilterEmptyNodes(tree2, folder2);
    tree2 = GetTree(folder2.string(), false);
    EXPECT_TRUE(tree1 == tree2);
}