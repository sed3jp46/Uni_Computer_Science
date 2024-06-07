module Rational (RatN, (%), numerator, denominator, plus, minus, mul, div) where
    data RatN = Rat Int Int
    plus, mul, minus, divla:: RatN -> RatN -> RatN
    plus (Rat n1 d1) (Rat n2 d2) = Rat (n1 * d2 + n2 * d1) (d1 * d2) 
    mul (Rat n1 d1) (Rat n2 d2) = Rat (n1 * n2) (d1 * d2)
    minus (Rat n1 d1) (Rat n2 d2) = Rat (n1 * d2 - n2 * d1) (d1 * d2)
    divla (Rat n1 d1) (Rat n2 d2) = Rat (n1 / n2) (d1 / d2)

    norm :: Int -> Int -> RatN
    norm _ 0 = error "zero denominator"
    norm n d = let g = gcd n d
        in Rat (div n g) (div d g)

    (%) :: Int -> Int -> RatN
    n % d = norm (n * signum d) (abs d)
    numerator (Rat n _) = n
    denominator (Rat _ d) = d
    
    instance Show RatN where
        show (Rat n d) = "(" ++ show n ++ " % " ++ show d ++ ")"

{--
module Main where
import Rational
.
.
.
--}
