--sum1 = sum [x^2 | x <- [1..100]]
--sum2 = (sum [x | x <- [1..100]])^2
--ans = abs (sum1 - sum2)

--NOTE: the extra pair of parenthesis around the last term is needed, as (-) A B^2 actually means (A-B)^2.
--ans = abs $ (-) (sum . map (^2) $ [1..100]) ((sum [1..100])^2)

ans = abs . (-) (sum . map (^2) $ [1..100]) $ (sum [1..100])^2

