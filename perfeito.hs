-- Checks if a number is the sum of it's divisors (28 = 1+2+3+4+7+14) except for itself
perfeito :: Int -> Bool
perfeito 0 = True
perfeito 1 = True
perfeito n
 -- The sum of the factors should be equal to the number, but the
 -- factors include n, so sum(factors) should be equal to n + n
 | sumAll (factors n) == n + n = True
 | otherwise = False

 -- All factors of a number
factors :: Int -> [Int]
factors 0 = []
-- Adds all numbers from (1 to n/2) that n is divisible, appends n
factors n = [ i | i <- [1..(n `div` 2)], n `mod` i == 0] ++ [n]

-- The sum of the elements of a list
sumAll :: [Int] -> Int
sumAll [] = 0
sumAll (e:list) = e + sumAll list
