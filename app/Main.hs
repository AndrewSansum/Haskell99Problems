module Main (main) where

import Problem1 (myLast)
import Problem2 (myButLast)

p1Data :: [Int]
p1Data = [1, 2, 3, 4]

problem1Example :: IO ()
problem1Example = do
  putStrLn "Problem 1: 'Find the last element of a list.'"
  putStrLn ("Input: " ++ show p1Data)
  print (myLast p1Data)
  putStrLn "\n"

p2Data :: [Int]
p2Data = [1, 2, 3, 4]

problem2Example :: IO ()
problem2Example = do
  putStrLn "Problem 2: 'Find the last-but-one (or second-last) element of a list.'"
  putStrLn ("Input: " ++ show p2Data)
  print (myButLast p2Data)
  putStrLn "\n"

allExamples :: [IO ()]
allExamples =
  [ problem1Example,
    problem2Example
  ]

main :: IO ()
main = do
  putStrLn "Showing solutions for all problems using my implementations."
  let count = length allExamples
  putStrLn (show count ++ " out of 99 problems complete. " ++ show (99 - count) ++ " problems remain.\n\n")
  sequence_ allExamples