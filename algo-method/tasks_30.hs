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
    num_list <- ints
    let num_1 = getLastDigit $ head num_list
    let num_2 = getLastDigit $ last num_list
    if num_1 < num_2
        then print $ head num_list
        else print $ last num_list
