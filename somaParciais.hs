-- Partial sums of a list:  somaParciais [1,2,3,4] = [1,1+2,1+2+3,1+2+3+4]
somaParciais :: [Int] -> [Int]
somaParciais [] = []
somaParciais [x] = [x]
-- Adds the first element with the first element of the somaParciais of the next element
somaParciais (e:list) =
	[ (e + j) | j <- (0:(somaParciais list)) ] -- Includes 0 so the first element is the element itself
