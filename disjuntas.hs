-- Checks if two lists are disjuntass (all elements are different)
disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas _ [] = True
-- Checks all elements, to see if one of them is on list2
disjuntas (e:list1) list2
 | isOnList e list2 = False
 | otherwise = disjuntas list1 list2

-- Checks if a number is in a list
isOnList :: Int -> [Int] -> Bool
isOnList _ [] = False
isOnList n (e:list)
 | n == e = True
 | otherwise = isOnList n list
