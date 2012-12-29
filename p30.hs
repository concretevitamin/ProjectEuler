import Data.Char

sum' x = foldl1 (\x acc -> x^5 + acc) $ map digitToInt (show x)

ans = sum . filter (\x -> sum' x == x) $ [2..999999]

main = do
    putStrLn $ show ans
