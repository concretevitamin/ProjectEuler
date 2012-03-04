import Data.Char
import Data.List

num = "7316717653133062491922511967442657474235534919\
      \4934969835203127745063262395783180169848018694\
      \7885184385861560789112949495459501737958331952\
      \8532088055111254069874715852386305071569329096\
      \3295227443043557668966489504452445231617318564\
      \0309871112172238311362229893423380308135336276\
      \6142828064444866452387493035890729629049156044\
      \0772390713810515859307960866701724271218839987\
      \9790879227492190169972088809377665727333001053\
      \3678812202354218097512545405947522435258490771\
      \1670556013604839586446706324415722155397536978\
      \1797784617406495514929086256932197846862248283\
      \9722413756570560574902614079729686524145351004\
      \7482166370484403199890008895243450658541227588\
      \6668811642717147992444292823086346567481391912\
      \3162824586178664583591245665294765456828489128\
      \8314260769004224219022671055626321111109370544\
      \2175069416589604080719840385096245544436298123\
      \0987879927244284909188845801561660979191338754\
      \9920052406368991256071760605886116467109405077\
      \5410022569831552000559357297257163626956188267\
      \0428252483600823257530420752963450"

--takeFiveNum :: String -> Int
--takeFiveNum st = stringToInt . take 5 $ st

--stringToInt :: String -> Int
--stringToInt st = foldl (\acc c -> acc * 10 + digitToInt c) 0 st

num' = drop 5 . reverse . map (take 5) . tails $ num
--    where stringToInt st = foldl (\acc c -> acc * 10 + digitToInt c) 0 st
-- [[1,2,3,4,5], [2,3,4,5,6]]
d = digitToInt

ans =
    foldl (\acc xs -> if product xs > acc then product' else acc) 0 num'
    where
        product' = (d a) * (d b) * (d c) * (d d) * (d * e)
