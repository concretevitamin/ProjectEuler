maps = [ (1, "one") , (2, "two") , (3, "three") , (4, "four") , (5, "five") , (6, "six") , (7, "seven") , (8, "eight") , (9, "nine")
       , (10, "ten") , (11, "eleven") , (12, "twelve") , (13, "thirteen") , (14, "fourteen") , (15, "fifteen") , (16, "sixteen") , (17, "seventeen") , (18, "eighteen") , (19, "nineteen")
       , (20, "twenty") , (30, "thirty") , (40, "forty") , (50, "fifty") , (60, "sixty") , (70, "seventy") , (80, "eighty") , (90, "ninety")]

countLetters num =
    case lookup num maps of
        Just st -> length st
        Nothing -> countDispatch num
                
countDispatch num
    | num < 100 = countLetters (num `div` 10 * 10) + countLetters (num `mod` 10)
    | num == 1000 = 11
    | num `mod` 100 == 0 = countLetters (num `div` 100) + 7
    | otherwise = countLetters (num `div` 100) + 10 + countLetters (num `mod` 100)

main = do
    putStrLn $ show $ sum $ map countLetters [1..1000]
