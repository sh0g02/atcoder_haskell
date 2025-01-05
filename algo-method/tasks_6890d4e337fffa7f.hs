module Main where

input :: IO [String]
input = words <$> getLine

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    s <- ints
    let work = s !! 1 - head s
    let rest = last s - s !! 2
    print $ work - rest
