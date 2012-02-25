sum1 = sum [x^2 | x <- [1..100]]
sum2 = (sum [x | x <- [1..100]])^2
ans = abs (sum1 - sum2)
