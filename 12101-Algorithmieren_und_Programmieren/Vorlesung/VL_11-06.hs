data Tree a = Leaf
    | Node a (Tree a) (Tree a)
    
    insertTree :: Ord a => a -> Tree a -> Tree a
    insertTree a Leaf = Node a Leaf Leaf
    insertTree a t@(Node n l r) = if (a==n) then t
                                      else if (a < n) then (Node n (insertTree a l) r)
                                          else (Node n l (insertTree a r)) 
