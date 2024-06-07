grundflaecheAusSeitenlaenge :: Double -> Double
grundflaecheAusSeitenlaenge a
    | a < 0 = error "Rule 34 alle fehler gibs"
    | otherwise

seitenlaengeAusGrundflaeche :: Double -> Double
seitenlaengeAusGrundflaeche a
    | a < 0 = error "Rule 34 alle fehler gibs"
sqrt a

volumenAusGrundflaecheUndHoehe :: Double -> Double -> Double
volumenAusGrundflaecheUndHoehe g h = (g * h)/3

grundflaecheAusVolumenUndHoehe :: Double -> Double -> Double
grundflaecheAusVolumenUndHoehe v h = (v * 3)/h

hoeheAusVolumenUndGrundflaeche :: Double -> Double -> Double
hoeheAusVolumenUndGrundflaeche v g = (v * 3)/g

seitenhoeheAusHoeheUndSeitenlaenge :: Double -> Double -> Double
seitenhoeheAusHoeheUndSeitenlaenge h a = sqrt ((h*h) + (a/2)*(a/2))

mantelflaecheAusSeitenlaengeUndHoehe :: Double -> Double -> Double
mantelflaecheAusSeitenlaengeUndHoehe a h = 2 * a * (sqrt ((h*h) + ((a/2)*(a/2))))

oberflaecheAusSeitenlaengeUndHoehe :: Double -> Double -> Double
oberflaecheAusSeitenlaengeUndHoehe a h = (a*a) + 2 * (a*a) * (sqrt ((h*h) + ((a/2)*(a/2))))
