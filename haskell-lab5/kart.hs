data D1 = D1 {s :: string, i :: int}

nonEmpty :: String -> Either String String
nonEmpty "" = Left "Empty!"
nonEmpty s = Right s

nonNegative :: Int -> Either String Int
nonNegative n = if n >= 0 then Right n else Left "n < 0"

validate :: D1 -> Either String D1
validate d = if even $ i d then Right d else Left "i is odd!"

createD1 :: String -> Int -> Either String D1
createD1 s1 i1 = nonEmpty s1 >>= \s -> nonNegative i1 >>= \i -> return $ validate $ D1 s i
