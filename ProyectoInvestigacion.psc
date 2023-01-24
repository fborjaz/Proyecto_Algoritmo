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
// Pide dos numeros y presenta el mayor de los dos
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
//Funcion División de Restas
Funcion DivisióndeRestas()
	Definir num1, num2, cociente Como Entero
	cociente=0
	Escribir "Ingresar Dos numeros:"
	Leer num1, num2 
	Mientras num1>=num2 Hacer
		num1=num1-num2
		cociente=cociente+1
	FinMientras
	Escribir "El cociente de la división es:", " " cociente
	Escribir "El Restante es:", " " num1 
FinFuncion
//Funcion multplicación de dos numeros por sumas
Funcion MultiplicaciónporSumas() 
	Definir num1, num2, c, resu Como Entero
	resu=0
	Escribir "///////Ingresa Primer Numero///////:"
	Leer num1
	Escribir "///////Ingresa Segundo Numero//////:"
	Leer num2
	Para c=1 hasta num2 Hacer
		resu=resu+num1
	FinPara
	Escribir "El resultado de la operación es:", " " resu
FinFuncion
//Funcion Suma Pares y Productos multiplos de 5 de una secuencia de numeros
Funcion sumaparesproductomultiplos5()
	Definir num, sum, producto como entero
	Sum=0; producto=1;
	para num=1 Hasta 10 Hacer
		si num mod 2=0 entonces 
			sum=sum+num
		FinSi
		Si num mod 5=0 Entonces
			producto= trunc(producto*num)
		FinSi
	FinPara
	Escribir "La suma de los pares es:", " " sum
	Escribir "El producto de los multiplos de 5 es:", " " producto
FinFuncion
//Funcion cantidad de numeros hasta leer 0
Funcion cantidaddenumeros()
	Definir num Como Entero
	num=1
	Escribir "Cantidad de Digitos"
	Mientras num<>0 Hacer
		Leer num 
	FinMientras
FinFuncion
//Funcion sacar iva y total
Funcion sacarivaytotal()
	Definir num, des, precio, i Como Entero
	Definir iva, total Como Real
	Escribir "¿Cuantos trajes llevará?"
	Leer num 
	Para i=1 hasta num con paso 1 Hacer
		Escribir "Precio del traje #",i
		Leer precio
		des=precio/10
		iva=(precio-12)*0.12
		total=precio-des+iva
		Escribir "El total del traje #",i " " "es:", " " total "$"
	FinPara
FinFuncion
//Funcion dado tres numeros indicar si el segundo es el mayor 
Funcion Dadotresnumeros()
	Definir n1,n2,n3 como entero 
	Escribir "Digite tres numeros:"
	Leer n1,n2,n3;
	Si (n2 > n1) y (n2 > n3) Entonces
		Escribir "El segundo numero", " " n2 " " "Es mayor" 
	Sino
		Escribir "El segundo numero", " " n2 " " "No Es mayor"
	FinSi
FinFuncion
//Funcion Calcular cantidad de numeros promedio
Funcion CantidadDeNumerosPromedio()
	Definir n1,num,suma,r,div Como Real
	suma=0
	Escribir "Digite cantidad de numeros:"
	Leer num 
	Para r=1 Hasta num con paso 1 Hacer
		Escribir "Numero #", r 
		Leer n1
		suma=n1+suma
	FinPara
	div=(suma/4)
	Escribir "el promedio general es:", " " div
FinFuncion
//Funcion Para saber si dos Numeros son Amigos, por medio de la suma de los divisores
Funcion NumerosAmigos()
	Definir n1, n2, s1, s2, R Como Entero
	S1=0; s2=0;
	Escribir "Digite dos numeros:"
	Leer n1, n2;
	para R=1 Hasta n1 Hacer
		si (n1 mod R=0) y (R<>n1) Entonces
			s1=s1+R
		FinSi
 	FinPara
	para R=1 Hasta n2 Hacer
		si (n2 mod R=0) y (R<>n2) Entonces
			s2=s2+R
		FinSi
 	FinPara
	Si (s1 = s2) y(s2 = s1) Entonces
		Escribir "Los dos Numeros", " " n1, " " "Y "  n2 " " "Son amigos" 
	Sino 
		Escribir "Los dos Numeros", " " n1, " " "Y "  n2 " " "No son amigos" 
	FinSi
FinFuncion
// Funciones Primos Gemelos
Funcion PrimosGemelos()
	Definir num1, num2, r Como Entero
	Definir P1, P2 Como Logico
	P1=Verdadero
	P2=Verdadero
	//Leer variables
	Escribir "Ingresa Dos Numeros:"
	Leer num1, num2; 
	//
	Para r=2 Hasta raiz(num1) Hacer
		si num1 mod r=0 Entonces
			P1=Falso 
		FinSi
	FinPara
	Para r=2 Hasta raiz(num2) Hacer
		si num2 mod r=0 Entonces
			P2=Falso 
		FinSi
	FinPara
	//Comprobar
	Si (P1=Verdadero) y (P2=Verdadero) y (Abs(Num1-Num2)=2) Entonces
		Escribir "Los numeros son Primos Gemelos"
	SiNo
		Escribir "Los numeros No son Primos Gemelos"
	FinSi
FinFuncion
//FUNCIONES SUBMENU CADENAS
//Funcion PRESENTAR UN NOMBRE CARACTER POR CARACTER
Funcion Caracterporcaracter()
	
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
	
	// ARREGLO SUBMENU NUMEROS
	menuNumeros[0] = "  1)Mayor de 2 Numeros"
	menuNumeros[1] = "  2)Dividir dos numeros por restas"
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas"
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor"
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio"
	menuNumeros[8] = "  9)Numeros amigos"
	menuNumeros[9] = "  10)primos gemelos"
	menuNumeros[10]= "  11)Salir"
	
	// ARREGLOS SUBMENU CADENAS
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
	menuCadenas[8] = "  8)Indicar si una palabra es palindroma"
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
						Esperar 3 Segundos
					"2":
						Escribir "Dividir dos numeros por restas"
						DivisióndeRestas()
						Esperar 3 Segundos
					"3":
						Escribir "Multiplicar dos numeros por sumas"
						MultiplicaciónporSumas()
						Esperar 3 Segundos
					"4":
						Escribir "Suma de pares y Producto de multiplos de 5"
						sumaparesproductomultiplos5()
						Esperar 3 segundos 
					"5":
						Escribir "cantidad de digitos de todos los numeros de una secuencia de numeros"
						cantidaddenumeros()
						Esperar 3 segundos 
					"6":
						Escribir "Iva y total, Somos Mas"
						sacarivaytotal()
						Esperar 3 segundos
					"7":
						Escribir "Dado tres numeros indicar si el segundo es el mayor"
						Dadotresnumeros()
						Esperar 3 segundos
					"8":
						Escribir "Dado una secuencia de numeros presentar su promedio"
						CantidadDeNumerosPromedio()
						Esperar 3 segundos	
					"9":
						Escribir "Numeros Amigos"
						NumerosAmigos()
						Esperar 3 segundos
					"10":
						Escribir "Primos Gemelos"
						PrimosGemelos()
						Esperar 3 Segundos 
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
						Escribir "Nombre Caracter por Caracter"
						Esperar 3 Segundos
					"2":
						Escribir "Presentar el Primero, El Medio y El Ultimo de una Frase"
						Esperar 3 Segundos 
				FinSegun
			FinMientras
		"3":
			Escribir "Menu Arreglos"
			Esperar 3 Segundos
		"4":
			Escribir "Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
