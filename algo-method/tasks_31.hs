module Main where
    
input :: IO [String]
input = words <$> getLine

-- read を削除
-- read は文字列を特定の型（たとえば Int や Double）にパースしようとしますが、今回の要件では文字列として処理する必要があります。そのため、read を削除しました。
-- words のみを使用
-- words は入力を空白で区切り、リストとして返します。これで文字列リストが得られます。

main :: IO ()
main = do
    string_list <- input
    if head string_list == last string_list
        then putStrLn "Yes"
        else putStrLn "No"
