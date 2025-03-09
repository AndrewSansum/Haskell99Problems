import Problem1Spec (problem1Tests)
import Test.HUnit (runTestTT)

main :: IO ()
main = do print =<< runTestTT problem1Tests