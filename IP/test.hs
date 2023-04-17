--3)
--estanRelacionados :: Integer-> Integer -> Bool
--estanRelacionados a b | a==0 || b==0 =False
--                     |mod (existeUnk k) 2 == 0 = True
--                     |otherwise = False
--                      where existeUnk k = -(a^2) + a*b*(a`div`2)


--4)
-- problema prodInt ((n:Z))
prodInt ::(Float,Float)  ->(Float,Float)->(Float,Float)
prodInt (x,y) (z,k) =(x*z,y*k)

todoMenor::(Float,Float) ->(Float,Float)->(Bool,Bool)
todoMenor  (x,y) (z,k)= (z> x ,k> y) 

distanciaPuntos::(Float,Float) ->(Float,Float)->Float
distanciaPuntos (x1,y1) (x2,y2) | (x1,y1) == (0,0) && (x2,y2) == (0,0) = 0
                                |otherwise=sqrt((x1-x2)^2 +(y1-y2)^2)

sumaTerna::(Int,Int,Int)->Int
sumaTerna (x,y,z)= x+y+z 


--esMultiplo:: Int-> Int ->Int
--esMultiplo (n mod d == 0) = n
--sumarSoloMultiplos:: (Int,Int,Int) ->Int -> Int
--sumarSoloMultiplos (a,b,c) d | (a `mod` d == 0 ) && (b `mod`d ==0 ) && (c `mod` d==0) = a+b+c
                          

--posPrimerPar ::(Int,Int,Int)->Int
--posPrimerPar (x1,x2,x3) =


--5)
f :: Int->Int
f n  =  if (n>7) then 2*n-1 else n*n

g :: Int->Int
g n = if esPar(n) then n `div` 2 else 3*n+1

esPar:: Int->Bool
esPar n =(n `mod` 2) ==0 

todosMenores:: (Int,Int,Int)-> Bool
todosMenores (x1,x2,x3)= f(x1) > g(x1) && f(x2)>g(x2) && f(x3)>g(x3)

--6)

bisiesto:: Integer -> Bool
bisiesto b = esMultiplo b 4 &&   not(esMultiplo b 100) || esMultiplo b 400

esMultiplo:: Integer->Integer->Bool
esMultiplo n m = n`mod` m ==0

--7)
distanciaManhattan ::(Float,Float,Float)-> (Float,Float,Float) -> Float
distanciaManhattan (x1,y1,z1) (x2,y2,z2)= abs((x1-x2)+(y1-y2)+(z1-z2))

--8)
comparar :: Integer->Integer->Integer
comparar n m | sumaUltimosDosDigitos n < sumaUltimosDosDigitos m = 1
            | sumaUltimosDosDigitos n > sumaUltimosDosDigitos m = -1
            |otherwise = 0
            where sumaUltimosDosDigitos x = x `mod` 10 + (x `div`10) `mod` 10


--PRACTICA 4 RECURSION DE ENTEROS ---
fibonacci:: Integer->Integer
fibonacci 0=0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)


{-parteEntera ::Float->Integer
parteEntera x | sqrt(x*x) < x = 
-}
esDivisible :: Integer->Integer->Bool
esDivisible n m | m == n = True 
                | n < m = False
                | otherwise= esDivisible (n-m) m


sumaImpares:: Integer -> Integer
sumaImpares 1 = 1
sumaImpares x =  sumaImpares (x-1) + 2*(x-1) +1

medioFac:: Integer->Integer
medioFac 0 = 1
medioFac 1 = 1
medioFac n = n*medioFac (n-2)

