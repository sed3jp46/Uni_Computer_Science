abcformelLet :: Double -> Double -> Double -> (Double, Double) 
abcformelLet a b c  = 
    let 
        p = b/a
        q = c/a
        in ((p/2 + sqrt ((p/2)^2 - q),(p/2 + (sqrt ((p/2)^2) - q))))
