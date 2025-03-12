module Problem2Spec (problem2Tests) where

import Problem2 (myButLast)
import Test.HUnit

test_EmptyList_ReturnsNothing :: Test
test_EmptyList_ReturnsNothing =
  TestLabel
    "[] should return Nothing as it is an invalid input (not enough elements)"
    ( TestCase
        ( assertEqual "" Nothing (myButLast ([] :: [Int]))
        )
    )
test_Singleton_ReturnsNothing :: Test
test_Singleton_ReturnsNothing =
  TestLabel
    "[a] should return Nothing as it is an invalid input (not enough elements)"
    ( TestCase
        ( assertEqual "" Nothing (myButLast ([0] :: [Int]))
        )
    )

test_List_ReturnsButLast :: Test
test_List_ReturnsButLast =
  TestLabel
    "[a, b] should return a as it is second to last"
    ( TestCase
        ( assertEqual "" Nothing (myButLast ([0, 1] :: [Int]))
        )
    )

problem2Tests :: Test
problem2Tests =
  TestLabel
    "\nTests for problem two\n"
    ( TestList
        [ test_EmptyList_ReturnsNothing,
          test_Singleton_ReturnsNothing,
          test_List_ReturnsButLast
        ]
    )
