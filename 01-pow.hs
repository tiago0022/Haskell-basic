-- Exponentiation 
pow :: Integer -> Integer -> Integer
pow n 0 = 1                           -- n ^ 0 = 1
pow n exp
 | exp > 0 = n * (pow n (exp - 1))    -- positive exp
 | exp < 0 = (1 `div` (pow n (-exp))) -- negative exp
