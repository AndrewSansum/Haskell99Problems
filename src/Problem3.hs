module Problem3 (elementAt) where

elementAt :: [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt (x : _) 0 = Just x
elementAt (_ : xs) i = elementAt xs (i - 1)