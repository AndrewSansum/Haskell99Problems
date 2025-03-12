module Problem3Spec (problem3Tests) where

import Problem3 (elementAt)
import Test.HUnit (Test (TestCase, TestLabel, TestList), assertEqual)

test_NegativeIndex_ReturnsNothing :: Test
test_NegativeIndex_ReturnsNothing =
  TestLabel
    "Negative indices should return nothing (out of the range of indices)"
    ( TestCase
        ( assertEqual "" Nothing (elementAt ([1, 2, 3] :: [Int]) (-1))
        )
    )

test_LargeIndex_ReturnsNothing :: Test
test_LargeIndex_ReturnsNothing =
  TestLabel
    "Indices larger than or equal to the length of the list should return nothing (out of range indices)"
    ( TestCase
        ( assertEqual "" Nothing (elementAt ([1, 2, 3] :: [Int]) 3)
        )
    )

test_InRangeIndex_ReturnsElement :: Test
test_InRangeIndex_ReturnsElement =
  TestLabel
    "Indices in range should return element at index"
    ( TestList
        [ TestCase
            ( assertEqual "" (Just 1) (elementAt ([1, 2, 3] :: [Int]) 0)
            ),
          TestCase
            ( assertEqual "" (Just 2) (elementAt ([1, 2, 3] :: [Int]) 1)
            )
        ]
    )

problem3Tests :: Test
problem3Tests =
  TestLabel
    "\nTests for problem three\n"
    ( TestList
        [ test_NegativeIndex_ReturnsNothing,
          test_LargeIndex_ReturnsNothing,
          test_InRangeIndex_ReturnsElement
        ]
    )
