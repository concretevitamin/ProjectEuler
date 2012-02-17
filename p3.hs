isPrime :: Int -> Bool
isPrime n
    | [x | x <- [2..n - 1], n `mod` x == 0] == [] = True
    | otherwise                                   = False

primeList = [x | x <- [1..floor (sqrt 1000)], isPrime x]

getPrimeFactorsList :: Int -> [Int]
getPrimeFactorsList n = [x | x <- primeList, n `mod` x == 0]

ans = maximum (getPrimeFactorsList 1000)
