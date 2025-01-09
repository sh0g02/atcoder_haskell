module Main where

input :: IO [String]
input = words <$> getLine

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    s <- getLine
    let s_int = read s :: Int
    if 0 <= s_int && s_int <= 100
        then putStrLn "valid"
        else putStrLn "invalid"
