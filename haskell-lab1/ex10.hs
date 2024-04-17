nonEmpty :: String -> Either String String
nonEmpty "" = Left "Empty!"
nonEmpty s = Right s
