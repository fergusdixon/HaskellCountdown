module Question4 (split) where

split :: [Int] -> [([Int], [Int])]

split xs = [(x, y) | a <- [1..(length xs - 1)]
                   , x <- [take a xs]
                   , y <- [drop a xs]]