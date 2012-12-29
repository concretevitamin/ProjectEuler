--import Control.Applicative
--import Data.Numbers.Primes (primes)
--
--ans = head $ filter (odd) $ filter (specialSum) [1..] -- lazy evaluation
--
--specialSum :: Int -> Bool
--specialSum n = elem n $ (+) <$> primes <*> twiceSquare
--    where twiceSquare = map (2*) squareList
--	  squareList  = map (^2) [1..]
import Data.Numbers.Primes (isPrime)

ans = head [x | x <- [3,5..], (not . isPrime) x, null [Nothing | s <- [1..((floor . sqrt . fromIntegral) x)], isPrime (x-2*s^2)]]

main = do
    putStrLn $ show ans
