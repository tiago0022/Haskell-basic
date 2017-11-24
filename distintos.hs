-- Checks if all the number of a list are distinct
distintos :: [Int] -> Bool
distintos [] = True
distintos (e:list)
 | isOnList e list = False
 | otherwise = distintos list

-- Checks if a number is in a list
isOnList :: Int -> [Int] -> Bool
isOnList _ [] = False
isOnList n (e:list)
 | n == e = True
 | otherwise = isOnList n list
