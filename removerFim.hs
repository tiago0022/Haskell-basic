-- Removes the last n elements of a list
removerFim :: Int -> [Int] -> [Int]
removerFim _ [] = []
removerFim 0 list = list
removerFim n list = removerFim (n - 1) (removeLast list)




--Removes the last element of a list
--removeLast :: [Int] -> [Int]
--removeLast [] = []
--removeLast [_] = []
--removeLast (e:list) = (e:(removeLast list))
