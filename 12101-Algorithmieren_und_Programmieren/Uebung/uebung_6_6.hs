import Data.List (sort)
module Menge () where

 data Menge el = Menge [el] deriving Eq
 
 instance (Show el) => Show (Menge el) where
     show (Menge liste) = "{" ++ init (tail (show liste)) ++ "}"
 
 leer :: Menge el
 leer = Menge []
 
 einfuegen :: (Ord el) => el -> Menge el -> Menge el
 einfuegen el (Menge []) = Menge [el]
 einfuegen el (Menge liste) = (Menge (liste ++ [el]))

 loeschen :: (Ord el) => el -> Menge el -> Menge el
 loeschen b (Menge el) = (Menge [ a | a <- (el) , a /= b ])

 vereinigung :: (Ord el) => Menge el -> Menge el -> Menge el
 vereinigung (Menge el) (Menge al) = (Menge ((el) ++ (al)))

 schnitt :: (Ord el) => Menge el -> Menge e1 -> Menge e1
 schnitt (Menge al) (Menge el) = 