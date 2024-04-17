-- Funkcja pomocnicza do obliczania silni
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Funkcja obliczająca dwumian Newtona
binomial :: Integer -> Integer -> Integer
binomial n k = factorial n `div` (factorial k * factorial (n - k))

