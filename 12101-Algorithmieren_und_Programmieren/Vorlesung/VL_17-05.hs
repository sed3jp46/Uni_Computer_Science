splitAt :: Int -> [a] -> ([a],[a])
splitat 0 list = ([],list)
splitAt n [] = ([],[])
splitAt n (x:xs) =
   let (x,xs) = splitAt (n-1) xs
   in (x:xs, ys)

{-- f..Argumente <= 100
f(100) = 7 
f (x)
    | x > 100 = error "--"
    | otherwise = f (x+1) --}
