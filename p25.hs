fibs = 0: 1 : zipWith (+) fibs (tail fibs)

-- turns out the problem does not ask for the term itself...
-- ans = head . dropWhile (<10^999) $ fibs

ans = length . takeWhile (<10^999) $ fibs

-- writeFile "res" $ show ans
