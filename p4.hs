ans = maximum [x*y | x <- [100..999], y <- [x..999], show (x*y) == reverse (show (x*y))]
