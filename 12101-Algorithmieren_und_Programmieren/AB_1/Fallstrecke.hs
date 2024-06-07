fallstrecke :: Double -> Double
fallstrecke t = ((t * t) * 9.81)/ 2

fallstreckeGlobal :: Double -> Double
g = 9.81
fallstreckeGlobal t = ((t * t) * g)/ 2

fallstreckeWhere :: Double -> Double
fallstreckeWhere t = ((t * t) * g)/ 2
    where g = 9.81
    
fallstreckeLet :: Double -> Double
fallstreckeLet t =
    let g = 9.81
    in ((t * t) * g)/ 2
    

fallstreckeIf :: Double -> Double
fallstreckeIf t
    if t <= 0 then error "Ohne Zeit kein Raumgewinn wa ?"
    else ((t * t) * 9.81)/ 2
    
fallstreckeGuards :: Double -> Double
falltreckeGuards t
    | t <= 0 = error "Wer hat an der Uhr gedreht ?"
    | otherwise = ((t * t) * 9.81)/ 2
  
    
