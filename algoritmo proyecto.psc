// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
// 1.Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero1"
	leer num1
	Escribir "Ingrese numero2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion
//2.Dividir dos numeros por restas
funcion Dividirporrestas()
	definir dividendo,divisor,cont,rest Como real
	escribir "ingrese el dividendo"
	leer dividendo
	Escribir "ingrese el divvisor"
	leer divisor
	cont=0
	rest=dividendo
	Mientras rest-divisor>= 0 Hacer
		rest=rest-divisor
		Escribir (rest+divisor) , "-",divisor,"=" ,rest
		cont=cont+1
	FinMientras
	Escribir " la division entre: ",dividendo,"/",divisor,"=",cont
FinFuncion
//3.Multiplicar dos numeros por sumas
Funcion Multiplicarporsumas()
	Definir n1,n2,sum,i Como Real
	Escribir "Ingrese el primer numero"
	leer n1
	Escribir "Ingrese el segundo numero"
	leer n2
	sum=0
	para i=1 Hasta n2 Con Paso 1 Hacer
		sum=sum+n1
		Escribir sum-n1," + ",n1,"=",sum
	FinPara
	Escribir "la multiplicacion de: ",n1,"*",n2,"=",sum
FinFuncion
// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
//4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros
Funcion sumaPyM5()
	Definir cant,x,n,sumpar,mu Como Entero
	Escribir "Numeros deseados a sumar y sacar su multiplo de 5 "
	Leer cant
	sumpar=0
	mu=1
	Para x=1 Hasta cant Con Paso 1 Hacer
		Escribir "Ingrese los numeros"
		Leer n
		si n mod 2 = 0
			sumpar = sumpar + n
		SiNo
			si n mod 5 = 0
				mu = mu * n
			FinSi
		FinSi
	Fin Para
	Escribir "La suma de los pares es = " sumpar
	Escribir "Los multiplos de 5 = " mu
FinFuncion
//Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
Funcion Cdedigitos()
	Definir cont,num Como Entero
	cont=0
	Escribir " ingrese los digitos"
	leer num
	Mientras num<>0 Hacer
		Mientras num<>0 Hacer
			num=trunc(num/10)
			cont=cont+1
		FinMientras
		Escribir "Ingrese numero"
		leer num
	FinMientras
	escribir cont
FinFuncion
//Somos mas mostrar El Precio, descuento, iva y pago de n trajes ta mal
Funcion somosmas()
	Definir n,n2,cont,suma,sumaiva,sumatotal,sumare,sum,sumap Como real
	Escribir "ingrese cuantos productos compro"
	leer n
	suma=0;cont=0;sumatotal=0;sumaiva=0;sumare=0;sum=0;sumap=0 
	Mientras cont<n Hacer
		Escribir "ingrese el valor de la compra uno por uno"
		leer n2
		suma=suma+n2
		cont=cont+1
	FinMientras
	si suma > 100 Entonces
		sum=suma*0.10
		sumare=(sumare-sum)*0.12
		sumatotal=suma+sumare
		Escribir "El valor de la compra con el descuento es: ",sumatotal
	SiNo
		sumap=suma*0.12
		sumaiva=suma+sumap
		Escribir "El valor total de la compra con iva es: ",sumaiva
	FinSi
FinFuncion
//3 numeros mayor medio
Funcion nmmayor()
	Definir a,b,c Como Entero
	Escribir "Ingrese el primer numero"
	Leer a
	escribir "ingrese el segundo numero"
	leer b
	Escribir "Ingrese el tercer numero"
	leer c
	Si b>a Entonces
		Escribir "El numero mayor es " b
		si b>c Entonces
			Escribir "El numero mayor es " b
		FinSi
	SiNo
		Escribir b " no es mayor que los otros numeros ingresados "
	Fin Si
FinFuncion
//Promedio hasta negativo
Funcion promedionegativo()
	Definir num, sum, pro Como real
	Definir c Como Entero
	c=0
	num=0
	sum=0
	Mientras num>=0 Hacer
		Escribir "Ingrese Un Numero: "
		leer num
		c=c+1
		si num>=0 Entonces
			
			sum=sum+num
			pro=sum/c
		FinSi
	FinMientras
	escribir "El Promedio de ", sum, " es: " pro
FinFuncion
//Numeros amigos
Funcion numeroamigo()
	Definir n1,n2,sum,c Como Entero
	Escribir "ingresar 2 numeros"
	leer n1,n2
	sum=0
	c=1
	Mientras c<n1 Hacer
		si n1 mod c==0 Entonces
			sum=sum+c
		FinSi
		c=c+1
	FinMientras
	si sum==n2 Entonces
		Escribir "los numeros son amigos"
	SiNo
		Escribir "los numeros no son amigos"
	FinSi	
FinFuncion
//primos gemelos
Funcion primogemelo()
	Definir i1,i2,cont1,cont2,n1,n2 Como Entero
	Escribir "ingrese los numeros"
	leer n1,n2
	i1=1
	i2=1
	cont1=0
	cont2=0
	Mientras i1<= n1 Hacer
		si n1 mod i1==0
			cont1=cont1+1
		FinSi
		i1=i1+1
		Mientras i2<=n2 Hacer
			si n2 mod i2==0
				cont2=cont2+1
			FinSi
			i2=i2+1
		FinMientras
	FinMientras
	si cont1 ==2 Entonces
		si cont2==2 Entonces
		FinSi
		Escribir " los numeros: " , n1 , " y " , n2 , " son primos gemelos"
	SiNo
		Escribir " los numeros: " , n1 , " y " , n2 , " no son primos gemelos"
	FinSi
FinFuncion
   //Cadenas
Funcion nombreCXC()
	Definir nombre Como Caracter
	Definir pos,l Como Entero
	pos=0
	l=0
	Escribir "Ingrese su nombre"
	Leer nombre
	l=Longitud(nombre)-1
	Para pos=0 Hasta l Con Paso 1 Hacer
		Escribir Subcadena(nombre,pos,pos)
	Fin Para
FinFuncion
//Presentar el primero, el medio y el ultimo caracter de una frase
Funcion caracterdeunafrase()
	Definir frase Como Caracter
	definir l Como Entero
	Escribir "ingrese la frase"
	leer frase
	l=Longitud(frase)
	Escribir "la primera letra de la frase es: ",Subcadena(frase,0,0)
	Escribir "la letra de la mitad de la frase es: ",Subcadena(frase,l/2,l/2)
	Escribir "la ultima letra de la frase es: ",Subcadena(frase,l-1,l-1)
FinFuncion
//Dado dos nombres indicar si son iguales
Funcion nombresiguales()
	Definir nom1,nom2 Como Caracter
	leer nom1,nom2
	si nom1=nom2 Entonces
		Escribir "los nombres :" , nom1, " y " , nom2 , "  son iguales " 
	SiNo
		Escribir " los nombres no son iguales"
	FinSi
FinFuncion
//Dadas dos frase indicar la de mayor longitud
funcion frasedemayorl()
	Definir frase1,frase2 Como Caracter
	Definir l1,l2 Como Entero
	Escribir "ingrese las frases"
	leer frase1,frase2 
	l1=Longitud(frase1)
	l2=Longitud(frase2)
	si l1  > l2 Entonces
		Escribir "la primera frase tiene mayor longitud"
	SiNo
		Escribir "la segunda frase tiene mayor longitud"
	FinSi
FinFuncion
//5signos
Funcion signos()
	Definir frase Como Caracter
	Definir l,pos,c1,c2,c3,c4 Como Entero
	pos=0;c1=0;c2=0;c3=0;c4=0
	Escribir "Ingrese frase"
	leer frase
	l=Longitud(frase)-1
	para pos=0 hasta l Con Paso 1 Hacer
		si Subcadena(frase,pos,pos)=","
			c1=c1+1
		FinSi
		si Subcadena(frase,pos,pos)="."
			c2=c2+1
		FinSi
		si Subcadena(frase,pos,pos)=";"
			c3=c3+1
		FinSi
		si Subcadena(frase,pos,pos)=":"
			c4=c4+1
		FinSi
	FinPara
	escribir "La cantidad de , es: ", c1
	escribir "La cantidad de . es: ", c2
	escribir "La cantidad de ; es: ", c3
	escribir "La cantidad de : es: ", c4
FinFuncion
//Dado una cadena indicar cuantas vocales, consonantes y digitos hay
Funcion cuantasvocalesconsonantesydigitoshayenlacadena()
	Definir frase Como Caracter
	definir l,cc,cv,cd,pos Como Entero
	Escribir "ingrese la frase "
	leer frase
	pos=0
	cc=0
	cv=0
	cd=0
	l=Longitud(frase)-1
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="a" o Subcadena(frase,pos,pos)="e" o Subcadena(frase,pos,pos)="i" o subcadena(frase,pos,pos)="o" o subcadena(frase,pos,pos)="u" o subcadena(frase,pos,pos)="A" o subcadena(frase,pos,pos)="E" o subcadena(frase,pos,pos)="I" o subcadena(frase,pos,pos)="O" o subcadena(frase,pos,pos)="u"o subcadena(frase,pos,pos)="U" Entonces
			cv=cv+1
		FinSi
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)="b" o Subcadena(frase,pos,pos)="c" o Subcadena(frase,pos,pos)="d" o Subcadena(frase,pos,pos)="f" o Subcadena(frase,pos,pos)="g" o Subcadena(frase,pos,pos)="h" o Subcadena(frase,pos,pos)="j" o Subcadena(frase,pos,pos)="k" o Subcadena(frase,pos,pos)="l" o Subcadena(frase,pos,pos)="m" o Subcadena(frase,pos,pos)="n" o Subcadena(frase,pos,pos)="ñ" o Subcadena(frase,pos,pos)="p" o Subcadena(frase,pos,pos)="q" o Subcadena(frase,pos,pos)="r" o Subcadena(frase,pos,pos)="s" o Subcadena(frase,pos,pos)="t" o Subcadena(frase,pos,pos)="v" o Subcadena(frase,pos,pos)="w" o Subcadena(frase,pos,pos)="x" o  Subcadena(frase,pos,pos)="y" o Subcadena(frase,pos,pos)="z" o Subcadena(frase,pos,pos)="B" o Subcadena(frase,pos,pos)="C" o Subcadena(frase,pos,pos)="D" o Subcadena(frase,pos,pos)="F" o Subcadena(frase,pos,pos)="G" o Subcadena(frase,pos,pos)="H" o Subcadena(frase,pos,pos)="J" o Subcadena(frase,pos,pos)="K" o Subcadena(frase,pos,pos)="M" o Subcadena(frase,pos,pos)="N" o Subcadena(frase,pos,pos)="Ñ" o Subcadena(frase,pos,pos)="P" o Subcadena(frase,pos,pos)="Q" o Subcadena(frase,pos,pos)="R" o Subcadena(frase,pos,pos)="S" o Subcadena(frase,pos,pos)="T" o Subcadena(frase,pos,pos)="V" o Subcadena(frase,pos,pos)="W" o Subcadena(frase,pos,pos)="X" o Subcadena(frase,pos,pos)="Y" o Subcadena(frase,pos,pos)="Z" Entonces
			cc=cc+1
		FinSi	
	FinPara
	para pos=0 Hasta l con paso 1 Hacer
		si Subcadena(frase,pos,pos)>="0" y Subcadena(frase,pos,pos)<="9" Entonces
			cd=cd+1
		FinSi
	FinPara
	Escribir " la frase tiene: " , cv , " vocales "
	Escribir " la frase tiene: " , cc , " consonantes "
	Escribir " la frase tiene: " , cd , " digitos "
FinFuncion
//7Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
Funcion palabrasf()
	Definir frase,car,carante Como Caracter
	Definir pos,ce,l Como Entero
	frase=""
	ce=1
	pos=0
	l=0
	Escribir "Ingrese frase"
	Leer frase
	l=Longitud(frase)-1
	Para pos=0 hasta l con paso 1 Hacer
		car= Subcadena(frase,pos,pos)
		carante= Subcadena(frase,pos-1,pos-1)
		Escribir car Sin Saltar
		si car <> " " y carante = " " entonces
			ce=ce+1
		FinSi
	FinPara
		Escribir ""
		Escribir "La frase: ",frase," tiene: ",ce," palabras"
FinFuncion
//8cedula
Funcion cedula()
	Definir n,d,c Como Real
	Escribir "Ingrese la cedula"
	Leer n
	c=0
	mientras n>0 Hacer
		d=n mod 10
		c=c+d
		n=trunc(n/10)
	FinMientras
	escribir "La suma de los numeros de la cedula es: ",c
FinFuncion
//9Palindroma
Funcion palindroma()
	Definir palabra,inversa Como Caracter
	Definir a,b,i Como Entero
	Escribir "Ingrese una palabra"
	leer palabra
	inversa=""
	b=Longitud(palabra)
	para i=b hasta 0 Con Paso -1 Hacer
		inversa=inversa+subcadena(palabra,i,i)
	FinPara
	Escribir inversa
	si palabra=inversa Entonces
		Escribir "La palabra ",palabra," es palindroma"
	SiNo
		Escribir "La palabra ",palabra," no es palindroma"
	FinSi
FinFuncion
//Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
Funcion posicioncaracter()
	Definir frase, letra, veri Como Caracter
	Definir a,b,i  Como Entero
    Definir lencontra Como Logico
	Escribir "ingrese la palabra"
	leer frase
	Escribir "Ingrese la letra"
	Leer letra
	lencontra=Falso
	Mientras (i<=Longitud(frase)) Hacer
		
		si (Subcadena(frase,i,i))=letra Entonces
			lencontra=Verdadero
			b=i
		FinSi
		i=i+1
	FinMientras
	Escribir "posicion: ",b
FinFuncion
//               ARREGLOS

//dado un arreglo cualquiera ingresarlo y presentarlo
Funcion presentararreglo()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese cantidad de numeros"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese sus numeros ",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Los numeros ingresados son "
	para pos=0 hasta cant-1 con paso 1 Hacer
		escribir n[pos]
	FinPara
FinFuncion

//Presentar los numeros pares de un arreglo
Funcion numerospares()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese cantidad de numeros"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese sus numeros ",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Los numeros pares son: "
	para pos=0 hasta cant-1 con paso 1 Hacer
		si n[pos] mod 2==0 Entonces
			Escribir n[pos]
		FinSi
	FinPara
FinFuncion
//Dado una serie de numeros guardar en un arreglo solo los numeros negativos
Funcion nnegativos()
	Definir pos,n,cant,c,i Como Entero
	Escribir "Ingrese cantidad de numeros"
	Leer cant
	i=1
	Dimension n[cant]
	para pos=0 hasta cant-1 con paso 1 Hacer
		Escribir "Ingrese el numero",i
		Leer n[pos]
		i=i+1
	FinPara
	Escribir "Se desplaza hasta abajo los numeros negativos"
	para pos=0 hasta cant-1 con paso 1 Hacer
		si n[pos] < 0 entonces
			Escribir n[pos]
		FinSi
	FinPara
FinFuncion
//Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion nominicial()
	Definir cuan,pos,posi,c Como Entero
	Definir n Como Caracter
	Escribir "cuantos nombres vas a ingresar"
	leer cuan
	Dimension n[cuan]
	posi=1
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "ingres el nombre: ",posi
		leer n[pos]
		posi=posi+1
	FinPara
	para pos=0 Hasta cuan-1 Con Paso 1 Hacer
		Escribir "la primera letra del nombre de ",n[pos]," es: ",Subcadena(n[pos],0,0)
	FinPara
FinFuncion
//Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
Funcion numtotalcantitadpromedio()
	Definir cant,pos,i,i1,c,n,acu,pro Como Real
	Escribir "Cuantos numeros va a ingresar"
	Leer cant
	dimension n[cant]
	i=1;acu=0;i1=0;pro=1
	Para pos=0 hasta cant-1 Con Paso 1 Hacer
		Escribir "Ingrese el numero", i
		Leer n[pos]
		acu=acu+n[pos]
		i=i+1
		i1=i1+1
	FinPara
	pro=acu/cant
	Escribir "La suma de los numeros es: " acu
	Escribir "La cantidad de los numeros es: " i1
	Escribir "El promedio de los numeros es: " pro
FinFuncion
//Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
Funcion multi5()
	Definir num,div,r,lim,pos,i Como real
	div = 5
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	pos=1
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",pos
		leer num[i]
		pos=pos+1
	FinPara
	Escribir ""
	para i = lim-1 hasta 1 con paso -1 hacer
		Si num[i] mod div = 0 Entonces
			Mostrar num[i] " , " Sin Saltar
		FinSi
	FinPara
FinFuncion
//Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion numprimeromedioyultimo()
	definir num,lim,i,pos Como Entero
	dimension num[5]
	pos=1
	Escribir "Ingresa 5 numeros"
	para i = 0 hasta 5-1 con paso 1 Hacer
		Escribir "Ingresa el numero ",pos
		leer num[i]
		pos=pos+1
	FinPara
	Escribir ""
	para i = 0 hasta 5-1 con paso 2 Hacer
		Mostrar " [ " num[i], " ] " Sin Saltar
	FinPara   
FinFuncion
//Dado un arreglo copiarlo en otro y presentarlo
Funcion arreglocopiarypegar()
	definir num,lim,i,ele Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension num[lim]
	Dimension ele[lim]
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingrese el numero ",i
		leer num[i]
		ele[i]=num[i]
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 hacer 
		Escribir  ele[i]
	FinPara
FinFuncion
//Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos
Funcion arreglos2suma()
	Definir arrgl, array,sum,i,lim,pos Como Entero
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension arrgl[lim]
	Dimension array[lim]
	Dimension sum[lim]
	i=0;pos=1
	Escribir "Arreglo 1"
	para i = 0 hasta lim-1 con paso 1 Hacer
		leer arrgl[i]
	FinPara
	Escribir "Arreglo 2"
	para i = 0 hasta lim-1 con paso 1 Hacer
		
		leer array[i]
	FinPara
	para i = 0 hasta lim-1 con paso 1 Hacer
		sum[i] = array[i] + arrgl[i]
	FinPara
	Escribir ""
	Escribir "La Suma: "
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar sum[i]
	FinPara
FinFuncion
//Dado una serie de numeros guarda en un arreglo los factoriales
Funcion factorialesarreglo()
	Definir num,i,lim,x,fact,pos Como real
	Escribir "Ingrese la cantidad de numeros"
	leer lim
	Dimension fact[lim]
	pos=1
	para i = 0 hasta lim-1 con paso 1 Hacer
		Escribir "Ingresa el numeros ",pos
		leer num
		x = num
		Mientras x > 1 Hacer
			x = x - 1
			num = num * x
		FinMientras
		fact[i] = num
		pos=pos+1
	FinPara
	Escribir ""
	para i = 0 hasta lim-1 con paso 1 Hacer
		Mostrar fact[i]," , " Sin Saltar
	FinPara	
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos"
	// dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales"
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo"
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo"
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10]="11) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 5 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						Dividirporrestas()
						Esperar 5 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						Multiplicarporsumas()
						Esperar 5 Segundos
					"4":
						Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						sumaPyM5()
						Esperar 10 Segundos
					"5":
						Escribir "Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						Cdedigitos()
						Esperar 5 Segundos
					"6":
						Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						somosmas()
						Esperar 5 Segundos
					"7":
						Escribir "Dado tres numeros indicar si el segundo es el mayor"
						nmmayor()
						Esperar 5 Segundos
					"8":
						Escribir "Dado una secuencia de numeros presentar su promedio"
						promedionegativo()
						Esperar 5 Segundos
					"9":
						Escribir "Numeros amigo"
						numeroamigo()
						Esperar 5 Segundos
					"10":
						Escribir "Primos gemelos"
						primogemelo()
						Esperar 5 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Cadenas",menuCadenas,11)
				Segun opcn Hacer
					"1":
						Escribir "Presentar un nombre caracter por caracter"
						nombreCXC()
						Esperar 5 Segundos
					"2":
						Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
						caracterdeunafrase()
						Esperar 5 Segundos
					"3":
						Escribir "Dado dos nombres indicar si son iguales"
						nombresiguales()
						Esperar 5 Segundos
					"4":
						Escribir "Dadas dos frase indicar la de mayor longitud"
						frasedemayorl()
						Esperar 5 Segundos
					"5":
						Escribir "Indicar cuantas ,.;: hay en una cadena"
						signos()
						Esperar 5 Segundos
					"6":
						Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						cuantasvocalesconsonantesydigitoshayenlacadena()
						Esperar 5 Segundos
					"7":
						Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						palabrasf()
						Esperar 5 Segundos
					"8":
						Escribir "IPresentar la suma de los digitos de una cedula"
						cedula()
						Esperar 5 Segundos
					"9":
						Escribir "Indicar si una palabra es palindroma"
						palindroma()
						Esperar 5 Segundos
					"10":
						Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
						posicioncaracter()
						Esperar 5 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"3":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("Menu Numeros",menuArreglos,11)
				Segun opcn Hacer
					"1":
						Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
						presentararreglo()
						Esperar 5 Segundos
					"2":
						Escribir "Presentar los numeros pares de un arreglo"
						numerospares()
						Esperar 5 Segundos
					"3":
						Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						nnegativos()
						Esperar 5 Segundos
					"4":
						Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						nominicial()
						Esperar 5 Segundos
					"5":
						Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						numtotalcantitadpromedio()
						Esperar 5 Segundos
					"6":
						Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						multi5()
						Esperar 5 Segundos
					"7":
						Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						numprimeromedioyultimo()
						Esperar 5 Segundos
					"8":
						Escribir "Dado un arreglo copiarlo en otro y presentarlo"
						arreglocopiarypegar()
						Esperar 5 Segundos
					"9":
						Escribir "Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos"
						arreglos2suma()
						Esperar 5 Segundos
					"10":
						Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
						factorialesarreglo()
						Esperar 5 Segundos
					"11":
						Escribir "Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
