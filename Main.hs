ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    input <- getLine -- haskellでは文字列は文字のリスト。String 型は [Char] 型と同じ。





    -- let result = foldl (*) 1 numbers -- foldl はリストを左から右へ処理し、累積的な結果を計算する
    let result = product numbers -- product はリスト内の全要素を掛け算する標準ライブラリの関数
    if even result
        then putStrLn "Even"
        else putStrLn "Odd"
