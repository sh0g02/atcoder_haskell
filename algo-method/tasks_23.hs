module Main where
    
main :: IO ()
main = do
    line1 <- getLine
    let a = read line1 :: Int
    print (24 - a)
