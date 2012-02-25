main = print . product . head . filter (\[a, b, c] -> a+b+c == 1000 && a^2+b^2 == c^2) $ [[a, b, c] | a <- [1..1000], b <- [a + 1..1000], c <- [b + 1..1000]]
