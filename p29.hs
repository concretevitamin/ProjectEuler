import Data.List

main = do
    let distinctProducts = nub [x^y | x <- [2..100], y <- [2..100]]
    putStr $ show . length $ distinctProducts
