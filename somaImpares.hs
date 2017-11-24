-- Adds all odd numbers on a list
somaImpares :: [Int] -> Int
somaImpares [] = 0                 -- empty list
somaImpares (y:ys)
 | y `mod` 2 == 0 = somaImpares ys -- even number not added
 | otherwise = y + somaImpares ys  -- odd number added
