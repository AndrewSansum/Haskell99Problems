module Problem4Spec (problem4Tests) where

import Problem4 (myLength)
import Test.HUnit (Test (TestCase, TestLabel, TestList), assertEqual)

test_EmptyList_ReturnsZero :: Test
test_EmptyList_ReturnsZero =
  TestLabel
    "[] has a length of zero."
    ( TestCase
        ( assertEqual "" 0 (myLength [])
        )
    )

test_FilledList_ReturnsLength :: Test
test_FilledList_ReturnsLength =
  TestLabel
    "[a, b, ..] returns the amount of elements in the list"
    ( TestCase
        ( assertEqual "" 5 (myLength ([1, 2, 3, 4, 5] :: [Int]))
        )
    )

problem4Tests :: Test
problem4Tests =
  TestLabel
    "\nTests for problem four\n"
    ( TestList
        [ test_EmptyList_ReturnsZero,
          test_FilledList_ReturnsLength
        ]
    )
