import Prelude hiding (map, any, all, iterate, filter, takeWhile, zipWith, curry, uncurry, (.), foldr, foldl, foldl1, foldr1)


map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (a:as) = f a : map f as

any :: (a -> Bool) -> [a] -> Bool
any _ [] = False
any f (a:as)
    | f a = True
    | otherwise = any f as

all :: (a -> Bool) -> [a] -> Bool
all _ [] = True
all f (a:as) = f a && all f as

iterate :: (a -> a) -> a -> [a]
iterate f a = [a]

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile f (a:as) = [a | a <- a:as, f a]

filter :: (a -> Bool) -> [a] -> [a]
filter f (a:as) = as

partition :: (a -> Bool) -> [a] -> ([a], [a])
partition f (a:as) = ([a],as)