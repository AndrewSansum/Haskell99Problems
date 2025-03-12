import Problem1Spec (problem1Tests)
import Problem2Spec (problem2Tests)
import Problem3Spec (problem3Tests)
import Test.HUnit (Test (TestLabel, TestList), runTestTT)

allTests :: Test
allTests =
  TestLabel
    "\nTests for all problems:\n\n"
    ( TestList
        [ problem1Tests,
          problem2Tests,
          problem3Tests
        ]
    )

main :: IO ()
main = do
  counts <- runTestTT allTests
  print counts