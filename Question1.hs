module Question1 (Expr(..), Op(..), eval, values) where

data Op = Add | Mul
data Expr = Val Int | App Op Expr Expr

instance Show Expr where
                    show (App op x y) = "(" ++ show x ++ " " ++ show op ++ " " ++ show y ++ ")"
                    show (Val i) = show i

instance Show Op where
                    show Mul = "*"
                    show Add = "+"

eval :: Expr -> Int

eval (Val n) = n
eval (App Add x y) = eval x + eval y
eval (App Mul x y) = eval x * eval y


values :: Expr -> [Int]

values (Val x) = [x]
values (App _ exp1 exp2) = values exp1 ++ values exp2