schaltjahrIf :: Int -> Bool
schaltjahrIf j = 
    if j `mod` 400 == 0
    then True
    else if j `mod` 100 == 0
    then False
    else if j `mod` 4 == 0
    then True
    else False
 
schaltjahrGuards :: Int -> Bool
schaltjahrGuards j 
    | j `mod` 400 == 0 = True
    | j `mod` 100 == 0 = False
    | j `mod` 4 == 0 = True
    | otherwise = False
    
schaltjahrBool :: Int -> Bool
schaltjahrBool j = ((j `mod` 400) == 0 || (j `mod` 4) == 0) && (j `mod` 100) /= 0 
