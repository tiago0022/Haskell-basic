-- shifts a list to the left and appends the overflow to the end
shift :: Int -> [Int] -> [Int]
shift 0 list = list
shift _ [] = []
shift n (e:list) = (shift (n - 1) (list ++ [e]))
