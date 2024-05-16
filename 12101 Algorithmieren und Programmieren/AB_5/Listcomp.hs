{-- Aufgabenblatt_5/ Jean-Pierre Kasperschinski
Aufgabe 1--}

--1
kreuzprodukt :: [a] -> [b] -> [(a,b)]
kreuzprodukt (x:xs) (y:ys) = 
    [(a,b) | a <- (x:xs),
             b <- (y:ys) ]    --durch die Listencomprehesion werden Tupel in einer Liste erstellt die jedes Element aus beiden Miteinander kombiniert

--2
geordnetePaare :: [Int] ->  [(Int,Int)]
geordnetePaare (x:xs) =
    [ (x, y) | x <- (x:xs),
               y <- (x:xs), x <= y]
