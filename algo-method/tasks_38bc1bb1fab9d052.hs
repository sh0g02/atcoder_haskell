module Main where

input :: IO [String]
input = words <$> getLine

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    s <- getLine
    let s_int = read s :: Int
    if 90 <= s_int && s_int <= 100
        then putStrLn "A"
    else if 80 <= s_int && s_int <= 89
        then putStrLn "B"
    else putStrLn "C"
