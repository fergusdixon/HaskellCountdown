module Question2 (delete) where

delete :: Int -> [Int] -> [Int]

delete _ [] = []
delete x xs | x == head xs  = tail xs
            | otherwise     = head xs : delete x (tail xs)