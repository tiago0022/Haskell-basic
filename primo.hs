-- Checks if a number is a prime number
primo :: Int -> Bool
-- By definition, 0 and 1 are not primes
primo 1 = False
primo 0 = False
primo n
 | n `mod` 2 == 0 = False           -- even numbers are not primes
 | factors n == [1,n] = True -- if the only factor is 1 and n, it's prime
 | otherwise = False

factors :: Int -> [Int]
factors 0 = []
-- Adds all numbers from (1 to n/2) that n is divisible, appends n
factors n = [ i | i <- [1..(n `div` 2)], n `mod` i == 0] ++ [n]
