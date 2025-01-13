module Main where
import Text.Read (readMaybe)

ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    input <- ints
    let n = head input
    let m = last input
    if n >= 70 && m >= 70 && n + m >= 160
        then putStrLn "Yes"
        else putStrLn "No"
