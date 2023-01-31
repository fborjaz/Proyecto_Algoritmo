// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion = presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter;
	Definir pos Como Entero;
	Borrar Pantalla;
	Escribir titulo;
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos];
	Fin Para
	Escribir "       Elija opci?n[1..",lim,"]" Sin Saltar;
	leer opcion;
FinFuncion
/// ARREGLO SUBMENU NUMEROS
// Pide dos numeros y presenta el mayor de los dos
//entrada:numero1 y numero2
//comparar numero1<numero2 o numero1>numero2
//salida:numeromayor ejemplo:5>2 presentar 5
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero;
	Escribir "Ingrese numero 1: ";
	leer num1;
	Escribir "Ingrese numero 2: ";
	leer num2;
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2;
	SiNo
		Si num1 < num2 Entonces
			Escribir num2," Es mayor que ",num1;
		SiNo
			Escribir num1," Es igual a ",num2;
		Fin Si
	Fin Si
FinFuncion
//Funcion Division usando Restas
//entrada:num1 y num2
//num2 restara num1 hasta que num1 >= num2 un contador aumentara la veces que se realize la suma 
//salida valor Resta final como residuo y contador como cociente 
//ejemplo 8 dividido para 4 *** 8-4=4, 4-4=0 residuo=0 ultima resta,cociente=2 veces que se realizo la resta
Funcion DivisiondeRestas()
	Definir num1, num2, cociente Como Entero;
	cociente = 0;
	Escribir "Ingresar Dos numeros: ";
	Leer num1, num2;
	Mientras num1 >= num2 Hacer
		num1 = num1 - num2;
		cociente = cociente + 1;
	FinMientras
	Escribir "El cociente de la division es: ", " " cociente;
	Escribir "El Restante es: ", " " num1;
FinFuncion
//Funcion multplicacion de dos numeros por sumas
//Funcion Division usando Restas
//entrada:num1 y num2
//num2 sera la veces que realizaremos la suma del num1 por si mismo
//salida resultado de suma total
//ejemplo 4*3 ; 0+4=4, 4+4=8, 8+4=12
Funcion MultiplicacionporSumas() 
	Definir num1, num2, c, resu Como Entero;
	resu = 0;
	Escribir "Ingresa Primer Numero: ";
	Leer num1;
	Escribir "Ingresa Segundo Numero: ";
	Leer num2;
	Para c = 1 hasta num2 Hacer
		resu = resu + num1;
	FinPara
	Escribir "El resultado de la operaci?n es: ", " " resu;
FinFuncion
//Funcion Suma Pares y Productos multiplos de 5 de una secuencia de numeros
//entrada 10 numeros 
// comparar si los numeros son multiplos de 2 para saber si son pares ej: NUM/2=0 en tal caso el contador aumentara 
// comparar si los numeros son multiplos de 5  ej:NUM/5=0 en tal caso el contador aumentara 
//salida contador de numeros pares y contador de multiplos de 5
//ejemplo [2,5,10,8,7,30,4,15,11,22] Numeros pares= 5, multiplos de 5=4
Funcion sumaparesproductomultiplos5()
	definir sumapares, multiplos, n, num, i Como real
	sumapares=0
	multiplos=1
	num=1
	escribir "cantidad de la  serie"
	leer n
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa un numero"
		leer num 
		si num mod 2=0 Entonces
			sumapares=sumapares+num
		SiNo
			si num mod 5=0 Entonces
				multiplos=multiplos*num
			FinSi
		FinSi
	fin para
	escribir "La suma de pares es " sumapares
	escribir "El producto de multiplos de 5 es " multiplos
FinFuncion
//Funcion cantidad de digitos de numeros hasta leer 0
Funcion cantidaddenumeros()
	definir digitos,num,divisor,div como real
	digitos=0
	num=1
	divisor=0
	mientras num<>0 Hacer
		Escribir "Ingresa un numero"
		leer num
		si num<>0 Entonces
			divisor=num
			Repetir
				divisor=trunc(div/10)
				digitos=digitos+1
			hasta Que divisor=0
		fin si
	fin mientras
	Escribir "La suma de digitos de todos los numeros es " digitos	
FinFuncion
//Funcion sacar iva y total
Funcion sacarivaytotal()
	definir iva, precio, descuento,x,preciofinal,ntrajes,i Como Real
	escribir "Ingresa la cantidad de trajes comprados"
	leer ntrajes
	Para x<-1 Hasta ntrajes Hacer
		Escribir "Ingrese le precio del traje " i
		leer precio
		Si precio>100 Entonces
			descuento=precio*0.10
			iva=(precio-descuento)*0.12
			preciofinal=(precio-descuento)+iva
			Escribir "El costo del traje " x " es " precio "   su  descuento  es " iva " el precio final es ",preciofinal
		SiNo
			descuento=precio*0.05
			iva=(precio-descuento)*0.12
			preciofinal=(precio-descuento)+iva
			Escribir "El costo del traje " x " es " precio "   su  descuento  es " iva " el precio final es ",preciofinal
		finsi
	Fin Para
FinFuncion
//Funcion dado tres numeros indicar si el segundo es el mayor 
Funcion Dadotresnumeros()
	Definir n1,n2,n3 como entero;
	Escribir "Digite tres numeros: ";
	Leer n1,n2,n3;
	Si (n2 > n1) y (n2 > n3) Entonces
		Escribir "El segundo numero", " " n2 " " "Es mayor";
	Sino
		Escribir "El segundo numero", " " n2 " " "No Es mayor";
	FinSi
FinFuncion

//Funcion Calcular cantidad de numeros promedio
Funcion CantidadDeNumerosPromedio()
	Definir n1,num,suma,r,div Como Real;
	suma = 0;
	Escribir "Digite cantidad de numeros:";
	Leer num;
	Para r=1 Hasta num con paso 1 Hacer
		Escribir "Numero #", r;
		Leer n1;
		suma = n1 + suma;
	FinPara
	div = (suma / 4);
	Escribir "el promedio general es:", " " div;
FinFuncion

//Funcion Para saber si dos Numeros son Amigos, por medio de la suma de los divisores
Funcion NumerosAmigos()
	Definir n1, n2, s1, s2, R Como Entero;
	s1 = 0; s2 = 0;
	Escribir "Digite dos numeros:";
	Leer n1, n2;
	para R = 1 Hasta n1 Hacer
		si (n1 mod R = 0) y (R <> n1) Entonces
			s1 = s1 + R;
		FinSi
 	FinPara
	para R = 1 Hasta n2 Hacer
		si (n2 mod R = 0) y (R <> n2) Entonces
			s2 = s2 + R;
		FinSi
 	FinPara
	Si (s1 = s2) y (s2 = s1) Entonces
		Escribir "Los dos Numeros", " " n1, " " "Y "  n2 " " "Son amigos";
	Sino 
		Escribir "Los dos Numeros", " " n1, " " "Y "  n2 " " "No son amigos";
	FinSi
FinFuncion

// Funciones Primos Gemelos
Funcion PrimosGemelos()
	Definir num1, num2, r Como Entero;
	Definir P1, P2 Como Logico;
	P1 = Verdadero;
	P2 = Verdadero;
	//Leer variables
	Escribir "Ingresa Dos Numeros:";
	Leer num1, num2; 
	//
	Para r = 2 Hasta raiz(num1) Hacer
		si num1 mod r = 0 Entonces
			P1 = Falso;
		FinSi
	FinPara
	Para r = 2 Hasta raiz(num2) Hacer
		si num2 mod r = 0 Entonces
			P2 = Falso;
		FinSi
	FinPara
	//Comprobar
	Si (P1 = Verdadero) y (P2 = Verdadero) y (Abs(Num1 - Num2) = 2) Entonces
		Escribir "Los numeros son Primos Gemelos";
	SiNo
		Escribir "Los numeros No son Primos Gemelos";
	FinSi
FinFuncion

///FUNCIONES SUBMENU CADENAS
//Funcion PRESENTAR UN NOMBRE CARACTER POR CARACTER
Funcion Caracterporcaracter()
	Definir frase Como Caracter;
	Definir pos, l Como Entero;
	pos = 0; l = 0; frase = "";
	Escribir "ingrese un nombre ";
	Leer frase;
	l = Longitud(frase) -1;
	Para pos = 0 Hasta l Con Paso 1 Hacer
		Escribir Subcadena(frase,pos,pos) ;
	Fin Para
FinFuncion
//Funcion Presentar el Primero, El Medio y El Ultimo de una Frase
Funcion PrimeroUltimoMedio()
	Definir nombre, primero, medio, ultimo Como Caracter;
	definir l, i como entero;
	Escribir "ingrese un nombre ";
	leer nombre;
	l = longitud(nombre);
	primero = Subcadena(nombre,0,0);
	medio = Subcadena(nombre,(l - 1) / 2,(l - 1) / 2);
	ultimo= Subcadena(nombre,l - 1,l - 1);
	escribir primero;
	escribir medio;
	escribir ultimo;
FinFuncion

//Funcion Indicar si son Iguales
Funcion SonIguales()
	Definir nombre,l, z,nombre2 Como Caracter;
	Escribir "Ingrese dos Nombres: ";
	leer nombre;
	leer nombre2;
	l = minusculas(nombre);
	z = minusculas(nombre2);
	si l = z 
		Escribir "Los nombres"," " nombre " " "y" " " nombre2 " " "son iguales";
	sino 
		Escribir "Los nombres"," " nombre " " "y" " " nombre2 " " "No son iguales";
	FinSi
FinFuncion

//Funcion Indicar cual tiene m?s Longitud
Funcion MayorLongitud()
	Definir frase1, frase2 Como Caracter;
	Definir l Como Entero;
	Escribir "Ingrese la primera frase";
	Leer frase1;
	Escribir "Ingrese la segunda frase";
	Leer frase2;
	l = longitud(frase1) ; l = longitud(frase2);
	Si Longitud(frase1) > Longitud(frase2) Entonces
		Escribir "La primera frase es la de mayor longitud";
	SiNo
		si Longitud(frase2) > Longitud(frase1) Entonces
			Escribir "La segunda frase es de mayor longitud";
		FinSi
	FinSi
FinFuncion

//Funcion Indicar cuantos puntos y coma hay en una frase
Funcion PuntoyComa()
	Definir frase Como Caracter;
	Definir l, pos, ccoma,cpunto,cpuntoycoma,cdospuntos Como Entero;
	pos = 0; l = 0; ccoma = 0; cpunto = 0; cpuntoycoma = 0; cdospuntos = 0;
	Escribir"Ingrese una frase: ";
	Leer frase ;
	l = Longitud(frase) -1;
	Para pos = 0 Hasta l Con Paso 1 Hacer
		Si Subcadena(frase,pos,pos) ="," Entonces
			ccoma = ccoma + 1;
		SiNo
			Si Subcadena(frase,pos,pos) ="." Entonces
				cpunto = cpunto+1;
			SiNo
				Si Subcadena(frase,pos,pos) =";" Entonces
					cpuntoycoma = cpuntoycoma + 1;
				SiNo
					Si Subcadena(frase,pos,pos) =":" Entonces
						cdospuntos = cdospuntos + 1;
						
					Fin Si
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "cantidad de coma " ccoma;
	Escribir "cantidad de punto " cpunto;
	Escribir "cantidad de punto y coma " cpuntoycoma;
	Escribir "cantidad de dos puntos " cdospuntos;
FinFuncion

//Funcion Dado una cadena Indicar cuantas vocales, consonantes y Digitos hay 
Funcion VocalesConsonantesDigitos()
	Definir frase, frasemin Como Caracter;
	Definir l, vocales, consonan, digitos, pos,vacio Como Entero;
	vocales = 0;
	consonan = 0;
	digitos = 0;
	vacio = 0;
	Escribir "Ingrese la frase ";
	leer frase;
	l = longitud(frase);
	frasemin = Minusculas(frase);
	Para  pos = 0 Hasta l-1 Con Paso 1 Hacer
		Si subcadena(frasemin,pos,pos) = "a" o Subcadena(frasemin,pos,pos) = "e" o Subcadena(frasemin,pos,pos) = "i"  o Subcadena(frasemin,pos,pos) = "o" o Subcadena(frasemin,pos,pos)= "u"
			vocales = vocales + 1;
		SiNo
			Si subcadena(frasemin,pos,pos) >= "0" y subcadena(frasemin,pos,pos) <= "9" Entonces
				digitos = digitos + 1;
			SiNo
				Si Subcadena(frasemin,pos,pos) = " " o subcadena(frasemin,pos,pos) = "," o subcadena(frasemin,pos,pos) = "." o subcadena(frasemin,pos,pos) = ";" o subcadena(frasemin,pos,pos)= ":" Entonces
					vacio = vacio + 1;
				SiNo
					consonan = consonan + 1;
				FinSi
			FinSi
		FinSi
	Fin Para
	Escribir " Hay " , vocales , " vocales en la frase";
	Escribir " Hay " , digitos , " digito(s) en la frase"; 
	Escribir " Hay " , consonan , " consonantes en la frase";
FinFuncion

//Funcion Dado una cadena Indicar Cuantas palabras hay en una frase teniendo en cuenta los espacios
Funcion PalabrasenFrase()
	Definir frase, car, carAnterior Como Caracter;
	Definir l, pos,conta Como Entero;
	Escribir "Introduzca una frase ";
	Leer frase;
	l = longitud(frase) -1;
	conta = 1;
	Para pos = 0 Hasta l Con Paso 1 Hacer
		car = Subcadena(frase,pos,pos);
		carAnterior = Subcadena(frase,pos-1,pos-1);
		Si car <> " " y carAnterior = " "
			conta = conta + 1;
		FinSi
	Fin Para
	Escribir "La frase tiene: ", conta ," palabras ";
FinFuncion

//Funcion Dado una cadena Presentar la suma de los digitos de una cedula
Funcion SumadeDigitos()
	Definir suma, pos, x, l Como Entero;
	Definir digito Como Caracter;
	suma=0;
	escribir "Ingrese su numero de cedula ";
	leer digito;
	l = longitud(digito);
	Para pos = 0 Hasta l-1 Con Paso 1 Hacer
		x = ConvertirANumero(subcadena (digito,pos,pos));
		suma = suma + x;
	Fin Para
	Escribir "La suma del numero de cedula ingresado es: ", suma;
FinFuncion

//Funcion Indicar si una palabra es Palindroma
Funcion PalabraPalindroma()
	Definir nombre, inversa Como Caracter;
	Definir pos Como Entero;
	Escribir "Ingresar un nombre";
	Leer nombre;
	nombre=Minusculas(nombre)
	Para pos=longitud(nombre) Hasta 0 Con Paso -1 Hacer
		inversa = inversa + Subcadena(nombre,pos,pos);
	Fin Para
	Escribir inversa;
	Si inversa = nombre Entonces
		Escribir "La palabra al derecho y al Reves es palindroma";
	SiNo
		Escribir "No se escribe de igual forma al derecho y al Reves, por lo tanto no es palindroma";
	FinSi
FinFuncion

//Funcion Dado una cadena Presentar la posicion de un caracter o subcadena dentro de una cadena
Funcion PosiciondeCaracter()
	definir frase,frase2 Como Caracter;
	definir l, l2, x, cont, pos, donde, z como entero;
	Escribir "Ingrese la frase: ";
	frase=" ";
	leer frase;
	l = longitud(frase);
	escribir "ingrese la palabra a buscar";
	frase2 = "";
	leer frase2;
	l2 = longitud(frase2);
	x = 0;
	cont = 0;
	para pos = 0 hasta l -1
		si subcadena(frase,pos,pos) = subcadena(frase2,x,x)
			donde = pos;
			z = pos;
		finsi
	FinPara
	repetir
		si subcadena(frase,z,z) = subcadena(frase2,x,x)
			z = z + 1;
			x = x + 1;
			cont = cont + 1;
		SiNo
			z = z + 1;
			x = x + 1;
		finsi
	hasta que subcadena(frase2,x,x) = subcadena(frase2,l2,l2) 
	si cont = l2 Entonces
		escribir "existe en la posicion: ",donde;
	SiNo
		escribir "no existe";
	FinSi
FinFuncion

///ARREGLO SUBMENU ARREGLOS 
//Funcion Dado un arreglo cualquiera ingresarlo y presentarlo
Funcion ArregloPresentarlo()
	Definir frases, nom Como Caracter;
	Definir letras, i Como Entero;
	Escribir "Ingrese la cantidad de frases";
	Leer letras;
	Dimension frases[letras];
	Para i <-0 Hasta letras-1 Con Paso 1 Hacer
		Escribir "Ingrese una frase";
		leer nom;
		frases[i] = nom
	Fin Para
	Para i <- 0 Hasta letras-1 Con Paso 1 Hacer
		Escribir Sin Saltar frases[i], " "; 
	Fin Para
FinFuncion

//Funcion Presentar los numeros pares de un arreglo 
Funcion NumerosParesArreglo()
	Definir x, cant,n, numerospar,z Como Entero;
	Escribir "Ingrese la cantidad de arreglos";
	Leer cant;
	Dimension x[cant];
	Para z <- 0 Hasta cant-1  Hacer
		Escribir "Ingrese un numero";
		leer n;
		x[z] = n;
	Fin Para
	Para z <- 0 Hasta cant-1 Con Paso 1 Hacer
		Si x[z] mod 2 = 0 Entonces
			numerospar = x[z];
			Escribir " pares : ", numerospar;
		FinSi
	Fin Para
FinFuncion

//Funcion Dado una serie de numeros guardar en un arreglo los numeros negativos 
Funcion ArregloNumerosNegativos()
	Definir num, cantidad,n, negativos, i Como Entero;
	Escribir "Ingrese la cantidad de arreglos";
	Leer cantidad;
	Dimension num[cantidad];
	Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir "Ingrese un numero";
		leer n;
		num[i] = n;
	Fin Para
	Para i <- 0 Hasta cantidad-1 Con Paso 1 Hacer
		Si num[i] < 0 Entonces
			negativos = num[i];
			Escribir "num[",i,"]: ", negativos
		FinSi
	Fin Para
FinFuncion

//Funcion Dado un arreglo de nombres presentar el primer caracter de cada nombre
Funcion PresentarPrimerCaracter()
	Definir  pos, i  Como Entero;
	Definir Nomb,Inical,nom Como Caracter;
	Escribir 'Ingrese la cantidad de nombres a registrar: ';
	Leer pos;
	Dimension Nomb[pos];
	Para i = 0 Hasta pos-1 Con Paso 1 Hacer
		
		Escribir 'Ingres el nombre';
		Leer nom;
		
		Nomb[i] = nom;
		
	FinPara
	Para i = 0 Hasta pos-1 Con Paso 1 Hacer
		Escribir 'Las iniciales de los nombres registrados son: ',(Subcadena(Nomb[i],0,0));
	FinPara
FinFuncion

//Funcion Dado un arreglo de numeros presentar el total de la suma, cantidad y promedio del Arreglo
Funcion TotalNumerosArreglo()
	Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo";
	definir canti, prom, suma, i, num Como Entero;
	Escribir "Ingresa la cantidad de valores del arreglo";
	leer canti;
	dimension num(canti);
	para i=0 hasta canti-1 Hacer
		Escribir "Ingresa el valor " i+1;
		leer num(i);
		suma = suma + num(i);
	FinPara
	prom = trunc(suma / canti);
	Escribir "La suma de los numeros ingresados dentro del arreglo es " suma;
	Escribir "La cantidad de numeros dentro del arreglo es de " canti;
	Escribir "El promedio de los numeros dentro del arreglo es " prom;
FinFuncion

//Funcion Dado un Arreglo Presentarlos al revez solo multiplos de 5 
Funcion ArregloPresentarlos()
	Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5";
	definir can, i, num, x Como Entero;
	Escribir "Ingresa la cantidad de valores del arreglo";
	leer can;
	dimension num(can);
	para i=0 hasta can-1 Hacer
		Escribir "Ingresa el valor " i + 1;
		leer num(i);
	FinPara
	Escribir "Numeros del arreglo multiplos de 5 al reves de lo ingresado";
	para x=can-1 Hasta 0 con paso -1 Hacer
		si num(x) mod 5 = 0 Entonces
			escribir "Posicion(" x ")" "= " num(x);
			
		FinSi
	FinPara
FinFuncion

//Funcion Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
Funcion PresentarPrimeroMedioUltimo()
	definir cantidad, i Como Entero
	Definir primero, ultimo, medio, elementos Como Caracter
	escribir "Ingresa la cantidad de valores para el arreglo"
	leer cantidad
	dimension elementos(cantidad)
	para i=0 hasta cantidad-1 Hacer
		escribir "Ingresa el valor " i+1
		leer elementos(i)
	FinPara
	
	primero=elementos(0)
	ultimo=elementos(cantidad-1)
    medio=elementos(trunc(cantidad/2))
	Escribir "(primero)=",primero
	escribir "(medio)=",medio
	escribir "(ultimo)=",ultimo
FinFuncion
//Funcion Dado un arreglo copiarlo en otro y presentarlo
Funcion ArregloCopiarlo()
	Definir numeros1,numeros2,pos,longitudd,cant,arreglo1,arreglo2 Como Entero;
	Escribir "Ingrese la cantidad de nuemros";
	Leer cant;
	Dimension arreglo1[cant]; Dimension arreglo2[cant];
	longitudd = cant-1;
	Para pos=0 Hasta longitudd Con Paso 1 Hacer
		Escribir "Ingrese los numeros ", pos;
		Leer arreglo1[pos];
	Fin Para
	Escribir "el arreglo copiado en otro arreglo es";
	Para pos=0 Hasta longitudd Con Paso 1 Hacer
		arreglo2[pos] = arreglo1[pos];
		Escribir arreglo2[pos];
	FinPara
FinFuncion

//Funcion Dado 2 arreglos copiar en otro arreglo la suma de cada elemento de los 2 arreglos
Funcion DadoDosArreglos()
	Definir num1,num2,num3,pos,longitudd,cant Como Entero;
	Escribir "Ingrese la cantidad de los numeros";
	Leer cant;
	Dimension num1[cant]; Dimension num2[cant]; Dimension num3[cant];
	longitudd = cant-1;
	Para pos=0 Hasta longitudd Con Paso 1 Hacer
		Escribir "Ingrese los numeros " ,pos;
		Leer num1[pos];
	Fin Para
	Escribir "valores para el arreglo 2 ";
	Para pos=0 Hasta longitudd Con Paso 1 Hacer
		Escribir "Ingrese los numeros " ,pos;
		Leer num2[pos];
	Fin Para
	Para pos=0 Hasta longitudd Con Paso 1 Hacer
		num3[pos] = num1[pos] + num2[pos];
		Escribir num3[pos];
	Fin Para
FinFuncion
//Funcion Dado una serie de numeros guarda en un arreglo los factoriales
Funcion ArregloFactoriales()
	Definir n,x,c, nl,arreglo, cont Como entero;
	Definir f  Como Real;
	Escribir "Ingrese la cantidad de numeros que contiene la serie:";
	Leer nl;
	Dimension arreglo(100);
	cont<-1;
	Escribir "Ingresa los numeros de la serie:";
	Mientras cont<=nl Hacer
		Leer n;
		Si n>=0 Entonces
			f<-1;
			c<-1;
			Mientras c<=n Hacer
				f<-(f*c);
				c<-c+1;
			FinMientras
		SiNo
			Escribir "No se puede calcular el factorial de: ",n;
		FinSi
		arreglo(cont)<-f;
		cont<-cont+1;
	FinMientras
	Escribir "Los factoriales de cada numero son: ";
	cont<-1;
	Mientras cont<=nl Hacer
		Escribir "Arreglo [",cont,"]:",arreglo(cont);
		cont<-cont+1;
	FinMientras
FinFuncion

/// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter;
	Definir pos,lim Como Entero;
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11];
	
	/// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros";
	menuPrincipal[1] = "  2)Ejercicios con Cadenas";
	menuPrincipal[2] = "  3)Ejercicios con Arreglos";
	menuPrincipal[3] = "  4)Salir";
	
	/// ARREGLO SUBMENU NUMEROS
	menuNumeros[0] = "  1)Mayor de 2 Numeros";
	menuNumeros[1] = "  2)Dividir dos numeros por restas";
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas";
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros";
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0";
	//El almacen SomosMas tiene una promoci?n: a todos los trajes que tienen un
	//precio superior a 100, se les aplicar? un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas";
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor";
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio";
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos";
	// dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos";
	menuNumeros[10]= "  11)Salir";
	
	/// ARREGLOS SUBMENU CADENAS
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter";
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase";
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales";
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud";
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena";
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay";
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras";
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula";
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma";
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena";
	menuCadenas[10] = "  11)Salir";
	
	/// Arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "1)Dado un arreglo cualquiera ingresarlo y presentarlo";
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo";
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos";
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre";
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo";
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5";
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo";
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "8)Dado un arreglo copiarlo en otro y presentarlo";
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos";
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "10)Dado una serie de numeros guarda en un arreglo los factoriales";
	menuArreglos[10]="11) Salir";
	opc="";
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4);
		Segun opc Hacer
			"1":
				opcn="";
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Numeros",menuNumeros,11);
					Segun opcn Hacer
						"1":
							Escribir "Mayor de dos Numeros";
							mayorDosNumeros();
							Esperar 3 Segundos;
						"2":
							Escribir "Dividir dos numeros por restas";
							DivisiondeRestas();
							Esperar 3 Segundos;
						"3":
							Escribir "Multiplicar dos numeros por sumas";
							MultiplicacionporSumas();
							Esperar 3 Segundos;
						"4":
							Escribir "Suma de pares y Producto de multiplos de 5";
							sumaparesproductomultiplos5();
							Esperar 3 segundos;
						"5":
							Escribir "cantidad de digitos de todos los numeros de una secuencia de numeros";
							cantidaddenumeros();
							Esperar 3 segundos;
						"6":
							Escribir "Iva y total, Somos Mas";
							sacarivaytotal();
							Esperar 3 segundos;
						"7":
							Escribir "Dado tres numeros indicar si el segundo es el mayor";
							Dadotresnumeros();
							Esperar 3 segundos;
						"8":
							Escribir "Dado una secuencia de numeros presentar su promedio";
							CantidadDeNumerosPromedio();
							Esperar 3 segundos;
						"9":
							Escribir "Numeros Amigos";
							NumerosAmigos();
							Esperar 3 segundos;
						"10":
							Escribir "Primos Gemelos";
							PrimosGemelos();
							Esperar 3 Segundos;
						"11":
							Escribir "Regresando al Menu Principal";
							Esperar 3 Segundos;
						De Otro Modo:
							Escribir "Opcion invalida...";
							Esperar 3 Segundos;
					Fin Segun
				FinMientras
			"2":
				opcn="";
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Cadenas",menuCadenas,11);
					Segun opcn Hacer
						"1":
							Escribir "//Nombre Caracter por Caracter//";
							Caracterporcaracter();
							Esperar 3 Segundos;
						"2":
							Escribir "//Presentar el Primero, El Medio y El Ultimo de una Frase//";
							PrimeroUltimoMedio();
							Esperar 3 Segundos;
						"3":
							Escribir "//Ingresar Dos Frases y ver si son Iguales//";
							SonIguales();
							Esperar 3 Segundos;
						"4":
							Escribir "//Frase de Mayor Longitud//";
							MayorLongitud();
							Esperar 3 Segundos;
						"5":
							Escribir "//cuantas ,.;: hay en una cadena//";
							PuntoyComa();
							Esperar 3 Segundos;
						"6":
							Escribir "//cuantas vocales, consonantes y digitos hay En una Frase//";
							VocalesConsonantesDigitos();
							Esperar 3 Segundos;
						"7":
							Escribir "//Cuantas palabras hay en una Frase//";
							PalabrasenFrase();
							Esperar 3 Segundos;
						"8":
							Escribir "//Presentar la Suma de los digitos de una Cedula//";
							SumadeDigitos();
							Esperar 3 Segundos;
						"9":
							Escribir "//Indicar si una palabra es palindroma//";
							PalabraPalindroma();
							Esperar 3 Segundos;
						"10":
							Escribir "//Presentar la posicion de un caracter o subcadena dentro de una cadena//";
							PosiciondeCaracter();
							Esperar 3 Segundos;
						"11":
							Escribir "Regresando al Menu Principal";
							Esperar 3 Segundos;
						De Otro Modo:
							Escribir "Opcion invalida...";
							Esperar 3 Segundos;
					FinSegun
				FinMientras
			"3":
				opcn="";
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Arreglos",menuArreglos,11);
					Segun opcn Hacer
						"1":
							Escribir "//Dado un arreglo Cualquiera ingresarlo y Presentarlo//";
							ArregloPresentarlo();
							Esperar 3 Segundos;
						"2":
							Escribir "//Presentar Los Numeros Pares de Un Arreglo//";
							NumerosParesArreglo();
							Esperar 3 Segundos;
						"3":
							Escribir "//Dado la serie de numeros guardar en un arreglo los numeros negativos//";
							ArregloNumerosNegativos();
							Esperar 3 Segundos;
						"4":
							Escribir "//Presentar el Primer Caracter de los Nombres//";
							PresentarPrimerCaracter();
							Esperar 3 Segundos;
						"5":
							Escribir "//presentar el total, la cantidad y el promedio del arreglo//";
							TotalNumerosArreglo();
							Esperar 3 Segundos;
						"6":
							Escribir "//Dado un arreglo presentarlo al revez solo los numeros multiplos de 5//";
							ArregloPresentarlos();
							Esperar 3 Segundos;
						"7":
							Escribir "//presentar el primero,el medio y el ultimo elemento del arreglo//";
							PresentarPrimeroMedioUltimo();
							Esperar 3 Segundos;
						"8":
							Escribir "//Dado un Arreglo copiarlo en otro y Presentarlo//";
							ArregloCopiarlo();
							Esperar 3 Segundos;
						"9":
							Escribir "//Dado dos Arreglos copiar en otro arreglo la suma de los Elementos de los 2 Arreglos//";
							DadoDosArreglos();
							Esperar 3 Segundos;
						"10":
							Escribir "//Dado una serie de numeros guarda en un arreglo los factoriales//";
							ArregloFactoriales();
							Esperar 3 Segundos;
						"11":
							Escribir "Regresando al Menu Principal";
							Esperar 3 Segundos;
						De Otro Modo:
							Escribir "Opcion invalida...";
							Esperar 3 Segundos;
					FinSegun
				FinMientras
			"4":
				Escribir "Gracias por usar el Sistema";
				Esperar 3 Segundos;
		Fin Segun
    Fin Mientras
FinAlgoritmo

