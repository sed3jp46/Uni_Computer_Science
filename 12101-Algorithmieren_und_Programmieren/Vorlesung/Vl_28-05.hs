module Queue (Queue, empty, enqueue, dequeue ) where

data Queue a = Qu [a] [a] deriving Show

empty :: Queue a
empty = Qu [] []

enqueue :: a -> Queue a -> Queue a
enqueue a (Qu (x:xs) (ys)) = Qu (x:xs) (a:ys)
enqueue a (Qu [] _) = Qu [a] []


dequeue :: Queue a -> Queue a
dequeue (Qu [a] (zs)) = Qu (reverse zs) []
dequeue (Qu (x:(y:ys)) (zs)) = Qu (y:ys) (zs)

