-- Verifies the minimum amount of bills that summed completes a value (available bills: 1, 5, 10, 50, 100) (ex.: 162 = 1 + 1 + 10 + 50 + 100)
trocar :: Int -> [Int]
trocar 0 = []
trocar n
 | n >= 100 = r100
 | n >= 50 = r50
 | n >= 10 = r10
 | n >= 5 = r5
 | n >= 1 = r1
 where
  r100 = ((trocar (n - 100)) ++ [100])
  r50 = ((trocar (n - 50)) ++ [50])
  r10 = ((trocar (n - 10)) ++ [10])
  r5 = ((trocar (n - 5)) ++ [5])
  r1 = ((trocar (n - 1)) ++ [1])

-- Calculates the number of elements in a list
size :: [Int] -> Int
size [] = 0
size (e:list) = 1 + size list

-- Returns the list with fewer elements
minLength :: [Int] -> [Int] -> [Int]
minLength l1 l2
 | (size l1) <= (size l2) = l1
 | otherwise = l2
