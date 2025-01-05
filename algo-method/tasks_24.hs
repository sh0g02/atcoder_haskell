ints :: IO [Int]
ints = map read . words <$> getLine

main :: IO ()
main = do
    numbers <- ints
    let result = sum numbers -- product はリスト内の全要素を掛け算する標準ライブラリの関数
    print result
