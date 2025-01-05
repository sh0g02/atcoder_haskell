module Main where
    
input :: IO [String]
input = words <$> getLine

main :: IO ()
main = do
    string <- getLine
    putStrLn [string !! div (length string) 2]
