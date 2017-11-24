-- Transforms a list of list in a single list
linearizar :: [[Int]] -> [Int]
linearizar [] = []
linearizar (e:list) = e ++ (linearizar list)
