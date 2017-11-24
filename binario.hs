-- Converts a number in a list representing it's binary equivalent
binario :: Int -> [Int]
binario 1 = [1]
binario 0 = [0]
binario n
 -- If the number is even, adds 0 in the right side and gets the binary of n/2
 | n `mod` 2 == 0 = (binario (n `div` 2)) ++ [0]
 | otherwise = (binario (n `div` 2)) ++ [1]
