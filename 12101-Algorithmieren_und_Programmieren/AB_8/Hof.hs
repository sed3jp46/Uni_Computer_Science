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
filter f [] = []
filter f [a] = [a]
filter f (a:as) =
    if f a then a : filter f as
    else filter f as

partition :: (a -> Bool) -> [a] -> ([a], [a])
partition f (a:as) = ([a],as)

zipwith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipwith f [] bs = []
zipwith f as [] = []
zipwith f (a:as) (b:bs) = f a b : zipwith f as bs

(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f (g x)

uncurry :: (a -> b -> c) -> (a,b) -> c
uncurry f (x,y) = f x y

curry :: ((a,b) -> c ) -> a -> b -> c
curry f x y = f (x,y)

foldl :: (acc -> el -> acc) -> acc -> [el] -> acc
foldl f z [] = z
foldl f z (x:xs) = foldl f (f z x) xs

foldr :: (el -> acc -> acc) -> acc -> [el] -> acc
foldr f z [] = z
foldr f z (x:xs) = f x (foldr f z xs)

foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 f [x] = x
foldr1 f (x:xs) = f x (foldr1 f xs)

foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 f [x] = x
foldl1 f (x:xs) = foldl f x xs

--alleAnwenden :: [arg -> wert] -> arg -> [wert]

--hintereinanderAnwenden :: [wert -> wert] -> wert -> wert