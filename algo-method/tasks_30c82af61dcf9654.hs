module Main where
import Text.Read (readMaybe)



main :: IO ()
main = do
    s <- getLine
    case readMaybe s :: Maybe Int of
        Just s_int ->
            if s_int == 100
                then putStrLn "S"
            else if 90 <= s_int && s_int <= 99
                then putStrLn "A"
            else if 80 <= s_int && s_int <= 89
                then putStrLn "B"
            else if 70 <= s_int && s_int <= 79
                then putStrLn "C"
            else if 60 <= s_int && s_int <= 69
                then putStrLn "D"
            else if 50 <= s_int && s_int <= 59
                then putStrLn "E"
            else putStrLn "F"
        Nothing -> putStrLn "invalid"
