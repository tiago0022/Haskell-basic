-- Adds all odd numbers on a list
oddSum :: [Int] -> Int
oddSum [] = 0                 -- empty list
oddSum (y:ys)
 | y `mod` 2 == 0 = oddSum ys -- even number not added
 | otherwise = y + oddSum ys  -- odd number added
