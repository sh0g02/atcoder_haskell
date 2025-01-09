module Main where

input :: IO [String]
input = words <$> getLine

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    s <- getLine
    if length s <= 6
        then putStrLn "dangerous"
        else putStrLn "safe"
