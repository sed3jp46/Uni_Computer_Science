bubbleSort :: Ord el => [el] -> [el]
bubbleSort [] = []
bubbleSort [a] = [a]
bubbleSort list = 
   let newlist = bubble list
   in  bubbleSort (init newlist) ++ [last newlist] 

bubble :: Ord el => [el] -> [el]
bubble [] = []
bubble [a] = [a]
bubble (x:y:ys)
    | x < y = x : bubble (y:ys)
    | otherwise = y : bubble (x:ys)
