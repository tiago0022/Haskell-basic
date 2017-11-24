-- Exponentiation
potencia :: Integer -> Integer -> Integer
potencia n 0 = 1                           -- n ^ 0 = 1
potencia n exp
 | exp > 0 = n * (potencia n (exp - 1))    -- positive exp
 | exp < 0 = (1 `div` (potencia n (-exp))) -- negative exp
