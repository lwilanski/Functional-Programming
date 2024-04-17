parse2Ints :: String -> Maybe (Int, Int, [Char])
parse2Ints s = do
	(i1, s1) <- parseInt s
	(_, s2) <- parseSep s1
	(i2, s3) <- parseInt s2
	let minVal = 10
	return (max i1 minVal, max i2 minVal, s3)


parse2IntsM s = parseInt s >>= \(i1, s1) -> parseSep s1 >>= \(_, s2) -> parseInt s2 >>= \(i2, s3) -> let minVal = 10 in return return (max i1 minVal, max i2 minVal, s3)
