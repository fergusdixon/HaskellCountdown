module Question5 (exprs) where

import Question1 -- For Data types & eval
import Question4 -- For split

combine :: Expr -> Expr -> [Expr]
combine l r = [App op l r | op <- [Add, Mul]]

exprs :: [Int] -> [Expr]
exprs [] = []

exprs [x] = [Val x]
exprs xs = [e | (ls, rs) <- Question4.split xs
                , l <- exprs ls
                , r <- exprs rs
                , e <- combine l r]