module Main where
    
ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    numbers <- ints
    let num1 = head numbers
    let num2 = last numbers
    if num1 > num2
        then print num1
        else print num2
