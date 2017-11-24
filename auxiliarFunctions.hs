-- All factors of a number
factors :: Int -> [Int]
factors 0 = []
-- Adds all numbers from (1 to n/2) that n is divisible, appends n
factors n = [ i | i <- [1..(n `div` 2)], n `mod` i == 0] ++ [n]

-- The sumAll of the elements of a list
sumAll :: [Int] -> Int
sumAll [] = 0
sumAll (e:list) = e + sumAll list

-- Checks if a number is in a list
isOnList :: Int -> [Int] -> Bool
isOnList _ [] = False
isOnList n (e:list)
 | n == e = True
 | otherwise = isOnList n list

-- Gets the last element of a list
lastElem :: [Int] -> Int
lastElem [] = (-1)
lastElem [x] = x
lastElem [x,y] = y
lastElem (e:list) = lastElem list

-- Removes the last element of a list
removeLast :: [Int] -> [Int]
removeLast [] = []
removeLast [_] = []
removeLast (e:list) = (e:(removeLast list))
