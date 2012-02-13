-- alternative:
-- fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- man this is hard to understand for someone completely unfamiliar with functional programming...
fibs = 1 : 1 : [a + b | (a, b) <- zip fibs (tail fibs)]
ans = sum [x | x <- take 1000 fibs, even x, x <= 4000000]
