isMultipleOf :: Integral a => a -> a -> Bool
x `isMultipleOf` y = if x `mod` y == 0 then True else False

sum' = sum [x | x <- [1..999], x `isMultipleOf` 3 || x `isMultipleOf` 5]
