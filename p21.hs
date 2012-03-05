properDivisors n = 1 : filter ((==0) . rem n) [2..n `div` 2]

d n = sum . properDivisors $ n

amicableList = filter amicable [2..9999]

amicable x =
    case x == (d x) of
        True  -> False
        False -> x == (d $ d x)

ans = sum amicableList
