module Question3 (perms) where

import Question2 -- For delete

perms :: [Int] -> [[Int]]

perms [] = [[]]

perms xs = do x <- xs
              let l = Question2.delete x xs
              ls <- perms l
              return $ x : ls