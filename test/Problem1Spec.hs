module Problem1Spec (problem1Tests) where

import Problem1 (myLast)
import Test.HUnit

emptyList :: [Int]
emptyList = []

test_EmptyList_ReturnsNothing :: Test
test_EmptyList_ReturnsNothing =
  TestLabel "[] should return Nothing as you cannot take the last element of an empty list." (TestCase (assertEqual "" Nothing (myLast emptyList)))

test_Singleton_ReturnsOnlyValue :: Test
test_Singleton_ReturnsOnlyValue =
  TestLabel
    "[a] should return Just a."
    (TestCase (assertEqual "" (Just 0) (myLast ([0] :: [Int]))))

test_List_ReturnsLast :: Test
test_List_ReturnsLast =
  TestLabel
    "[.., a] should return Just a."
    (TestCase (assertEqual "" (Just 4) (myLast ([0, 1, 2, 3, 4] :: [Int]))))

problem1Tests :: Test
problem1Tests = TestLabel "\nTests for problem one.\n" (TestList [test_EmptyList_ReturnsNothing, test_Singleton_ReturnsOnlyValue, test_List_ReturnsLast])