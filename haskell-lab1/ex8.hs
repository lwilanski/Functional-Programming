not' :: Bool -> Bool
not' b = case b of
          True  -> False
          False -> True

absInt :: Int -> Int
absInt n = case (n >= 0) of
             True -> n
             _    -> -n

isItTheAnswer :: String -> Bool
isItTheAnswer s = case s of
                    "Love" -> True
                    _ -> False

roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ( (-b - d) / e, (-b + d) / e )
   where d = sqrt (b * b - 4 * a * c)
         e = 2 * a

unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (a, b) = (a / l, b / l)
   where l = sqrt(a*a + b*b) 
