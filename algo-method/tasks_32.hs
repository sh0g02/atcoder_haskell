module Main where
import Data.Char (digitToInt)

input :: IO [String]
input = words <$> getLine

ints :: IO [Int]
ints = map read . words <$> getLine

getLastDigit :: Int -> Int
getLastDigit n = digitToInt . last . show $ abs n

main :: IO ()
main = do
    s <- getLine
    n <- getLine
    let n_int = read n :: Int
    putStrLn [s !! (n_int - 1)]
