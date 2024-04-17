sgn :: Int -> Int
sgn n = if n < 0 then -1 else if n == 0 then 0 else 1

absInt :: Int -> Int
absInt n = if n < 0 then (-n) else n

min2Int :: (Int, Int) -> Int
min2Int (a, b) = if a < b then a else b

min3Int :: (Int, Int, Int) -> Int
min3Int (a, b, c) = min2Int(min2Int(a, b), c)

toUpper :: Char -> Char
toUpper c = if 'a' <= c && c <= 'z' then toEnum (fromEnum c - fromEnum 'a' + fromEnum 'A') else c

toLower :: Char -> Char
toLower c = if 'A' <= c && c <= 'Z' then toEnum (fromEnum c - fromEnum 'A' + fromEnum 'a') else c

isDigit :: Char -> Bool
isDigit c = '0' <= c && c <= '9'

charToNum :: Char -> Int
charToNum c = if isDigit c then fromEnum c - fromEnum '0' else error "charToNum :: not a digit"
