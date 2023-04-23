--3)
--estanRelacionados :: Integer-> Integer -> Bool
--estanRelacionados a b | a == 0 || b ==0 =False
--                      | mod (a^2`div`a*b) 2 == 0 =True


--4)


prodInt ::(Float,Float) -> (Float,Float) -> (Float,Float)
prodInt (x,y) (z,k) =(x*z,y*k)

todoMenor::(Float,Float) ->(Float,Float)->(Bool,Bool)
todoMenor  (x,y) (z,k)= (z> x ,k> y) 

distanciaPuntos::(Float,Float) ->(Float,Float)->Float
distanciaPuntos (x1,y1) (x2,y2) =sqrt((x1-x2)^2 +(y1-y2)^2)

sumaTerna::(Int,Int,Int)->Int
sumaTerna (x,y,z)= x+y+z 


sumarSoloMultiplos:: (Integer,Integer,Integer) ->Integer -> Integer
sumarSoloMultiplos (a,b,c) d = if ( mod a d == 0) then a else 0 + if ( mod b d == 0) then b else 0 + if (mod c d == 0) then c else 0


--posPrimerPar ::(Int,Int,Int)->Int



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


parteEntera ::Float->Integer
--parteEntera x = floor x
parteEntera x | x < 1 && x>=0 =0
              | x > -1 && x <= 0 = -1
              | x >= 1 = 1 + parteEntera(x-1)
              |otherwise = (-1) + parteEntera (x+1)
             


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

sumaDigitos::Integer->Integer 
sumaDigitos 0 = 0
sumaDigitos n = (n `mod` 10) + sumaDigitos (n `div` 10)

todosDigitosIguales:: Integer->Bool
todosDigitosIguales n 
                     | n == mod n 10 =True
                     |otherwise= mod n 10 == (mod(div n 10) 10) && todosDigitosIguales(div n 10)

--8)
{--iesimoDigito:: Integer->Integer->Integer
iesimoDigito n i 

cantidadDigitos:: Integer -> Integer
cantidadDigitos n |  n==0        =1
                  | otherwise = n div 10 ^cantidadDigitos(mod n 10) && n div 10
            1543              1543 div 10 ^3 

--}
--10)
f1 :: Integer->Integer
f1 0 = 1
f1 n = 2^n+ f1(n-1)

f2 :: Integer -> Float -> Float
f2 _ 0 = 0
f2 1 q = q
f2 n q = f2 (n-1) q + q^n 

f3:: Integer -> Float -> Float
f3 0 _ =1
f3 n q = f2(2*n-1) q + q^(2*n)


f4 ::Integer -> Float ->Float
f4 n q = f3 n q - q^(n-1)

--11)
eAprox ::Integer ->Float

eAprox n = eAprox (n-1) + 1 / fromIntegral (factorial n)

factorial:: Integer ->Integer
factorial 0 =1
factorial n = factorial (n-1)*n

e:: Float
e = eAprox 10


--12)

--raizDe2Aprox::Integer->Float
--raizDe2Aprox 1 =2
--raizDe2Aprox n = 1/() 

 

--13)
sumatoriaDobleNM :: Integer->Integer ->Float
sumatoriaDobleNM 0 _ = 0
sumatoriaDobleNM n m = sumatoriaDobleNM (n-1) m + f2 m (fromIntegral n)
--14)
sumaPotencias ::Integer->Integer->Integer->Integer
--sumaPotencias _ 0 _ = 0
sumaPotencias q n m = round(f2 n (fromIntegral q)) * round(f2 m (fromIntegral q))


--15)
sumaGauss :: Integer -> Integer
sumaGauss 1 = 1
sumaGauss n = sumaGauss(n-1) + n

serieArmonica :: Integer -> Float
serieArmonica 1 = 1
serieArmonica m = serieArmonica (m-1) + 1 / (fromIntegral m)
        
sumaRacionales:: Integer->Integer ->Float
sumaRacionales n m = fromIntegral (sumaGauss n) *serieArmonica m

--16)
menorDivisorAux:: Integer -> Integer ->Integer
menorDivisorAux  n k | n `mod` k == 0 = k
                     | otherwise      = menorDivisorAux n (k+1) 

menorDivisor :: Integer->Integer
menorDivisor n = menorDivisorAux n 2

esPrimo:: Integer -> Bool
esPrimo n =  if (menorDivisor n == n) then True else False

--sonCoprimos:: Integer ->Integer ->Bool

