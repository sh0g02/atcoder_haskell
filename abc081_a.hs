countOnes :: String -> Int
countOnes s = length $ filter (== '1') s

main :: IO ()
main = do
    input <- getLine
    print $ countOnes input
