{-- Aufgabenblatt_5/ Jean-Pierre Kasperschinski
Aufgabe 1--}
import Data.Char

--1
kreuzprodukt :: [a] -> [b] -> [(a,b)]
kreuzprodukt (x:xs) (y:ys) = do
    a <- (x:xs)
    b <- (y:ys)
    return (a,b)--durch die Listencomprehesion werden Tupel in einer Liste erstellt die jedes Element aus beiden Miteinander kombiniert

--2
geordnetePaare :: [Int] ->  [(Int,Int)]
geordnetePaare (x:xs) = [ (x, y) | x <- (x:xs),
                                   y <- xs, x <= y]--elemente werden zusammengeworfen sodass alle kombinationen abgedeckt werden mit der Vorraussetzung x <= y

--3
zusammenhaengen :: [[a]] -> [a]
zusammenhaengen xss = do
    xs <-xss
    x <- xs
    return x --Listen in Listen werden zu einer zusammengeführt

--4
zweite :: [(a,b)] -> [b]
zweite tuples = [second | (_, second) <- tuples]
--fkt. nimmet immer das 2te Element aus einen Tupel
zweite2 :: [(a, b)] -> [b]
zweite2 [] = []
zweite2 ((_, second):tuples) = second : zweite2 tuples

--5
durchFuenfTeilbar :: [Int] -> [Int]
durchFuenfTeilbar (x:xs) = [ x | x <- (x:xs), x `mod` 5 == 0 ]
--sotiert alle zahlen aus die durch 5 twilbar sind durch `mod` 5
durchFuenfTeilbar2 :: [Int] -> [Int]
durchFuenfTeilbar2 (x:xs)
    | x `mod` 5 == 0 = x : durchFuenfTeilbar2 xs
    | otherwise = durchFuenfTeilbar xs

--6
teiler :: Int -> [Int]
teiler a = [ b | b <- [1..a] , a `mod` b == 0 ]
--durch das prüfen der mods finden wir alle teiler raus
teiler2 :: Int -> [Int]
teiler2 a =
    filter (\b -> a `mod` b == 0) [1..a]

--7
istPrim :: Int -> Bool
istPrim a = length (teiler a) == 2
-- wenn die liste der teiler länger als 2 iat kann es keine primzahl sein
--8
primzahlen :: Int -> [Int]
primzahlen a = [ x | x <- [1..a], istPrim x]
-- durch istPrim findet man einfach die primzahlen raus
primzahlen2 :: Int -> [Int] 
primzahlen2 a =
   filter b -> istPrim a [2 ..a]

--9 
paare :: [a] -> [(a, a)]
paare [] = []
paare (x:y:xs) = (x,y) : paare (y:xs)
-- bildet tupel auf die gewollte art 

--10
sortiert :: Ord a => [a] -> Bool
sortiert xs = and [x <= y | (x, y) <- zip xs (tail xs)]
-- es wird überprüft ob die betroffene zahl kleiner als sein nachfolger ist
sortiert2 :: Ord a => [a] -> Bool
sortiert2 [] = True
sortiert2 (x:y:xs)
    | x < y = sortiert2 (y:xs)
    | otherwise = False

--11
anzKleinBuch :: String -> Int
anzKleinBuch str = length [c | c <- str, isLower c]
--Anzahl kleiner Buchtaben gezählt
anzKleinBuch2 :: String -> Int
anzKleinBuch2 str = length (filter isLower str)

--12
anzahl :: Char -> String -> Int
anzahl c str = length [x | x <- str, x == c]
-- es wird gezählt eir oft ein buchstabe im zielwort vorkommt
anzahl2 :: Char -> String -> Int
anzahl2 _ [] = 0
anzahl2 c (x:xs)
    | x == c = 1 + anzahl2 c xs
    | otherwise = anzahl2 c xs

--13
wiederhole :: Int -> a -> [a]
wiederhole n x = [x | _ <- [1..n]]
--gibt n-mal x wieder
wiederhole2 :: Int -> a -> [a]
wiederhole2 n x
    | n <= 0 = []
    | otherwise = x : wiederhole2 (n-1) x

--14
istPerfekt :: Int -> Bool
istPerfekt a = sum (echteTeiler a) == a
    where echteTeiler m = [x | x <- [1..m-1], m `mod` x == 0]
    --bildet liste zum späteren addieren 

perfekteZahlen :: Int -> [Int]
perfekteZahlen a = [x | x <- [1..a], istPerfekt x]
--greift auf istPerfekt zu sich code zu ersparen 
perfekteZahlen2 :: Integer -> [Integer]
perfekteZahlen2 n = filter istPerfekt [1..n]
    where istPerfekt m = sum (echteTeiler m) == m
          echteTeiler m = [x | x <- [1..m-1], m `mod` x == 0]
          
          
          
          
