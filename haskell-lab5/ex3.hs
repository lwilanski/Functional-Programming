safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

data Box a = MkBox a

instance Show a => Show (Box a) where
    show (MkBox x) = "MkBox " ++ show x

incIntBox :: Int -> Box Int
incIntBox x = MkBox (x + 1)
