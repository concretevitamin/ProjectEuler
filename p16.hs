import Data.Char
--
--twoPower x
--    | x == 1 = 2
--    | odd x  = 2 * (twoPower (x `div` 2)) * (twoPower (x `div` 2))
--    | even x = (twoPower (x `div` 2)) * (twoPower (x `div` 2))
--
--ans = foldl (\acc ch -> acc + digitToInt ch) 0 (show $ twoPower 1000)

ans = sum . map digitToInt . show $ 2^1000
