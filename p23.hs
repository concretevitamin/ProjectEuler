import Data.List
import Data.Array

-- much slower
properDivisors n = 1 : filter ((==0) . rem n) [2..n `div` 2]
-- much faster
divisors n = 1 : (nub $ facs ++ (map (div n) . reverse) facs)
    where facs = filter ((== 0) . mod n) [2..sqrt' n]
          sqrt' n = (floor . sqrt . fromIntegral) n


abundantNums = listArray (1, 28123) $ map isAbundant [1..28123]
    where isAbundant x = helper (divisors x) x 0
          helper xs x sum
            | sum > x = True
            | null xs = False
            | otherwise = helper (tail xs) x (sum + head xs)

reprAsSum x = or [abundantNums!n && abundantNums!(x-n) | n <- [1..x `div` 2]]

main = print . sum $ filter (not . reprAsSum) [1..28123]
