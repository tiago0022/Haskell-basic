-- Replaces all occurrences of x with y in a list
replaceElement :: Int -> Int -> [Int] -> [Int]
replaceElement _ _ [] = []
replaceElement x y (e:list)
 | e == x = (y:(replaceElement x y list))    -- replace element with y
 | otherwise = (e:(replaceElement x y list)) -- keeps element
