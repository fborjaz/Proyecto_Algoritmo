// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter;
	Definir pos Como Entero;
	Borrar Pantalla;
	Escribir titulo;
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos];
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar;
	leer opcion;
FinFuncion
// Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero;
	Escribir "Ingrese numero1";
	leer num1;
	Escribir "Ingrese numero2";
	leer num2;
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2;
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2;
		SiNo
			Escribir num1," Es igual a ",num2;
		Fin Si
	Fin Si
FinFuncion

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter;
	Definir pos,lim Como Entero;
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11];
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros";
	menuPrincipal[1] = "  2)Ejercicios con Cadenas";
	menuPrincipal[2] = "  3)Ejercicios con Arreglos";
	menuPrincipal[3] = "  4)Salir";
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros";
	menuNumeros[1] = "  2)Dividir dos numeros por restas";
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas";
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros ";
	menuNumeros[4] = "  5)Presentar cantidad de digitos de cada numero de una secuencia hasta 0";
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	menuNumeros[5] = "  6)Mostrar El valor, descuento, iva y pago de n trajes";
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor";
	// la secuencia termina cuando se ingres eun numero negativo
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio";
	// dos numeros son amigos cunado la sum de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	menuNumeros[8] = "  9)Numeros amigos ";
	// dos numeros son primos gemelos si ambos son primos
	menuNumeros[9] = "  10)primos gemelos";
	menuNumeros[10]= "  11)Salir";
	
	// arreglos submenu cadenas
	menuCadenas[0] = "  1)Presentar un nombre por caracter";
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase";
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales";
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud";
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena";
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay";
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras";
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula";
	menuCadenas[8] = "  8)Indicar si una palabra es palindroma";
	menuCadenas[9] = "  10)Presenta rla posicion de un caracter cualquiera dentro de una cadena";
	menuCadenas[10] = "  11)Salir";
	
	// arreglo submenu arreglos
	menuArreglos[0]= "1)Dado un arreglo cualquiera presentarlo";
	menuArreglos[1]= "2)Presentar los numeros pares de un arreglo";
    menuArreglos[2]= "3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos";
    menuArreglos[3]= "4)Dado un arreglo de nombres presentar el primer caracter de cada nombre";
    menuArreglos[4]= "5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo";
    menuArreglos[5]= "6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5";
    menuArreglos[6]= "7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo";
    menuArreglos[6]= "8)Dado un arreglo copiarlo en otro y presentarlo";
	menuArreglos[8]= "9)Dado una serie de numeros guarda en un arreglo los factoriales";
    menuArreglos[9]= "10)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos";
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
						Escribir "Ejercicio 2";
						Esperar 3 Segundos;
					"11":
						Escribir "Regresando al Menu Principal";
						Esperar 3 Segundos;
					De Otro Modo:
						Escribir "Opcion invalidad...";
						Esperar 3 Segundos;
				Fin Segun
			FinMientras
		    
		"2":
			Escribir "Menu Cadenas";
			Esperar 3 Segundos;
		"3":
			Escribir "Menu Arreglos";
			Esperar 3 Segundos;
		"4":
			Escribir "Gracias por usar el Sistema";
			Esperar 3 Segundos;
		Fin Segun
    Fin Mientras
FinAlgoritmo
