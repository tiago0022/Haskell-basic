-- Intercalates two list ([1,2] [3,4] = [1,3,2,4])
intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar list [] = list
intercalar [] list = list
intercalar (e1:list1) (e2:list2) = ([e1,e2] ++ (intercalar list1 list2))
