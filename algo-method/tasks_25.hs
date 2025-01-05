module Main where
    
ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    numbers <- ints
    let result = div (sum numbers) (length numbers)
    print result
