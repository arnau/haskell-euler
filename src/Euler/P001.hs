module Euler.P001 (sumOfMultiples,
                   sumOfMultiples')  where

-- Problem 1
--
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we
-- get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.

sumOfMultiples :: Int -> Int
sumOfMultiples n = sum $ filter (\x -> x `divBy` 3 || x `divBy` 5)
                       $ take (n - 1) [1..]

sumOfMultiples' :: Int -> Int
sumOfMultiples' n = sum [x | x <- [1..n],
                         x < n,
                         (x `divBy` 3 || x `divBy` 5)]

divBy :: Int -> Int -> Bool
divBy x y = x `mod` y == 0
