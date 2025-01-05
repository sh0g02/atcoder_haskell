module Main where
    
main :: IO ()
main = do
    line1 <- getLine
    let a = read line1 :: Int
    let result = fromIntegral a * 1.1  -- a を Double に変換 * 1.1
    print $ round result
