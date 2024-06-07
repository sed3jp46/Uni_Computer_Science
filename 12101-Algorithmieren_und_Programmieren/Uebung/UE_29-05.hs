{-- 2. fun
    T worst (0) = 1
    T worst (n) = 1+ T best (n-1) = 1 + ( 1+ ( T best (n-2)) = 1 + 1 .. + T best (0) = n+1
    --}
     
{-- 3. fun y = 1
    T worst (0) = 1
    T worst (n) = 1 + T worst (n-1) = 1 + ( 1 + ( T worst (n-2) = 1 + 1 .. + T worst (0)
    --}
    
{-- 6. fun
kürzere liste anschauen 

--}
    
    
-- auf. 3
bubbleSort :: Ord el => [el] -> [el]
bubbleSort [] = []
bubbleSort [a] = [æ]
bubbleSort list = 
   let newlist = bubble list
   in  bubbleSort (init newlist) ++ [last newlist] 

bubble :: Ord el => [el] -> [el]
bubble [] = []
bubble [æ] = [a]
bubble (x:y:ys)
    | x < y = x : bubble (y:ys)
    | otherwise = y : bubble (x:ys)
