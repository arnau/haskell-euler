module Euler.P003 (largestPrimeFactor,
                   factor)  where
-- Problem 3
--
-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the number 600851475143 ?

largestPrimeFactor :: Int -> Int
largestPrimeFactor = (last . factor)

factor :: Int -> [Int]
factor x = factor' x 2

factor' :: Int -> Int -> [Int]
factor' 1 _ = []
factor' x y | y * y > x = [x]
            | x `isFactorOf` y = y : factor' (x `div` y) y
            | otherwise = factor' x (y + 1)

isFactorOf :: Int -> Int -> Bool
isFactorOf x y = x `mod` y == 0
