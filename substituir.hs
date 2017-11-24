-- Replaces all occurrences of x with y in a list
substituir :: Int -> Int -> [Int] -> [Int]
substituir _ _ [] = []
substituir x y (e:list)
 | e == x = (y:(substituir x y list))    -- replace element with y
 | otherwise = (e:(substituir x y list)) -- keeps element
