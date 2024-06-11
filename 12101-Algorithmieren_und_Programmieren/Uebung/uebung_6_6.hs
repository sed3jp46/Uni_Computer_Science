module Menge (Menge(), leer, einfuegen, loeschen, vereinigung, schnitt, istLeer, istElement, istTeilmenge) where
import Data.List (sort)


data Menge el = Menge [el] deriving Eq

instance (Show el) => Show (Menge el) where
     show (Menge liste) = "{" ++ init (tail (show liste)) ++ "}"


leer :: Menge el
leer = Menge []

einfuegen :: (Ord el) => el -> Menge el -> Menge el
einfuegen el (Menge []) = Menge [el]
einfuegen el (Menge liste) = Menge (liste ++ [el])

loeschen :: (Ord el) => el -> Menge el -> Menge el
loeschen b (Menge el) = Menge [ a | a <- el , a /= b ]

vereinigung :: (Ord el) => Menge el -> Menge el -> Menge el
vereinigung (Menge el) (Menge al) = Menge (el ++ al)

schnitt :: (Ord el) => Menge el -> Menge el -> Menge el
schnitt (Menge al) (Menge el) =
    if length [al] < length [el] then Menge ( reverse ( sort [ x | x <- al, x `elem` el]))
    else Menge ( reverse ( sort [ x | x <- el, x `elem` al]))

{- differenz :: (Ord el) => Menge el -> Menge el -> Menge el
differenz (Menge el) (Menge al) =
    if length al < length el then Menge (reverse (sort (el // al)))
    else  Menge (reverse (sort (al // el))) -}

istLeer :: Menge el -> Bool
istLeer (Menge el) =
    null el

istElement :: (Ord el) => el -> Menge el -> Bool
istElement _ (Menge []) = False
istElement el (Menge al)
    | el == head (al) = True
    | otherwise = istElement el (Menge (tail (al)))

istTeilmenge :: (Ord el) => Menge el -> Menge el -> Bool
istTeilmenge (Menge []) _ = True
istTeilmenge (Menge al) (Menge el) =
    istElement (head (al)) (Menge el) && istElement (head (tail (al))) (Menge el)