-- Checks if a list is the same backwards
palindromo :: [Int] -> Bool
palindromo [] = True
palindromo [_] = True -- a list with one element is a palindrome
-- Compares the first and last element, if they are equal, checks the middle subList
palindromo (e : list)
 | e == (lastElem list) = palindromo (removeLast list)
 | otherwise = False

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
