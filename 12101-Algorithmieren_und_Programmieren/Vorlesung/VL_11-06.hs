ata Tree a = Leaf
    | Node a (Tree a) (Tree a) deriving Show

insertTree :: Ord a => a -> Tree a -> Tree a
insertTree a Leaf = Node a Leaf Leaf
insertTree a t@(Node n l r)
    | a==n = t
    | a < n = Node n (insertTree a l) r
    | otherwise = Node n l (insertTree a r)

delete :: Ord t => t -> Tree t -> Tree t
delete a Leaf = Leaf
delete a t@(Node n Leaf Leaf)
    | a == n = Leaf
    | otherwise = t
delete a t@(Node n l Leaf)
    | a == n = l
    | a < n = Node n (delete a l) Leaf
    | otherwise = t
delete a t@(Node n l r) = 
    if a == n then
        let x = findMin r --Übung!!
            r' = delete x r
        in
    else if a < n then Node n (delete a l) r
        else Node n l (delete a r)
