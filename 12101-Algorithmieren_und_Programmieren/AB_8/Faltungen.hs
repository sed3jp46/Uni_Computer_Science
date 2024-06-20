andWithFoldr :: [Bool] -> Bool
andWithFoldr = foldr (&&) True

andWithFoldl :: [Bool] -> Bool
andWithFoldl = foldl (&&) True

--orWithFoldr :: [Bool] -> Bool

--orWithFoldl :: [Bool] -> Bool

--sumWithFoldr :: (Num a) -> [a] -> a

--sumWithFoldL :: (Num a) -> [a] -> a

--productWithFoldr :: (Num a) -> [a] -> a

--productWithFoldL :: (Num a) -> [a] -> a