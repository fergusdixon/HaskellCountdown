module Question6(solve) where

import Question1 -- For Data types & eval
import Question3 -- For perms
import Question5 -- For exprs

solve :: [Int] -> Int -> [Expr]
solve ns n = [x | ps <- Question3.perms ns
                , x <- exprs ps
                , eval x == n]