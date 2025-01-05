module Main where
    
input :: IO [String]
input = words <$> getLine

main :: IO ()
main = do
    string_list <- input
    let s = head string_list
    let t = string_list !! 1
    let u = last string_list
    putStrLn (u ++ t ++ s)
