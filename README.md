# Solucion EX1
Para resolver el primer problema es necesario entender la division entera `mod(n,i)`.
Esta funcion lo que hace es entregar el resto de dividir n por i. Si el resto de una division es cero, entonces n es divisible por i.
Por ejemplo 10/2 tiene resto cero, pues 10 es divisible por 2. Por el contrario, 10/3 tiene resto 1, y entonces 10 no es divisible por 3.
Con esta funcion tambien podemos comprobar si un numero es impar, si `mod(n,2)`es igual a 1, quiere decir que el resto de dividir por 2 es 1, o sea, `n` es impar.
Con estas dos ideas, resolvemos el problema como sigue:
Para un numero cualquiera `n`, tenemos que dividir `n` por cada numero de `1,2,....,n`, y verificar que el resto de la division sea cero. Esto se hace con la instruccion 
```
for i=1:n
  if mod(n,i)==0
```
Pero en el problema ademas nos piden de solo entregar los divisores impares, por lo tanto al mismo tiempo  verificamos si `i` es impar:
```
  if mod(n,i)==0 && mod(i,2)==1
```
En la variable divs entregaremos los divisores, por lo tanto
```
  if mod(n,i)==0 && mod(i,2)==1
  divs(k) = i
  k = k+1
```

# Solucion EX2
En este problem nos piden calcular la forumla de [Basel](https://en.wikipedia.org/wiki/Basel_problem) para aproximar `pi^2/6`
Procedemos como antes, primero necesitamos los numero desde el `1,2,...,n`, esto en octave se obtiene con:
```
1:n
```
Por ejemplo:
```
>> 1:5

ans =

     1     2     3     4     5
```
Una vez que obtenemos los numero del 1 al `n`, los elevamos al cuadrado usando `.^` (el . denota aplicar la opearion ^ a cada elemento)
```
out = (1:n).^2
```
llamaremos out a nuestra variable intermediaria. Ahora que tenemos los cuadrados de 1, 4, 9 a `n^2`, aplicamos los inversos de la misma manera con `./`
```
out = 1../(1:n).^2
```
Ahora necesitamos la suma:
```
out = sum(1../(1:n).^2)
```
et voila!

Ponemos todo lindo, una funcion en cada archivo y ya esta.
