module Problem2 (myButLast) where

myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast [_] = Nothing
myButLast (x : [_]) = Just x
myButLast (_ : xs) = myButLast xs