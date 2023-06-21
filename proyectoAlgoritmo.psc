// INTEGRANTES - B2:
// JAMPIER FRANCISCO SIMBA�A CEVALLOS
// UBER ALEXI OLIVO ARTEAGA
// BARONA ALVARADO STEVEN LEONARDO
// FEIBER DAVID NIETO REYES
// JOSE SEBASTIAN SILVA BAQUE

// ���IMPORTANTE!!!
// Para que funcione correctamente ir a > Configurar > Opciones del lenguaje (perfiles)... > Personalizar
// Activar: Utilizar indices en arreglos y cadenas en base 0

// Se define una funci�n llamada "presentarMenu" que toma tres par�metros: "titulo"
// que representa el t�tulo del men�, "menuPrincipal" que es un arreglo que contiene las opciones del men�/submen�
// y "lim" que indica el l�mite de opciones
Funcion opcionMenu=presentarMenu(titulo, menuPrincipal, lim)
	Definir opcionMenu Como Caracter
	Definir pos Como Entero //Pos se utilizara como contador para el "Para"
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menuPrincipal[pos]
	FinPara
	Escribir ""
	Escribir "   Elija una opci�n [1...", lim, "]" Sin Saltar
	Leer opcionMenu
FinFuncion

//Funciones para Estructuras Selectivas 1

//Ejercicio 1.1
Funcion prioridadOperadores()
	Definir r1, r4, r5 Como Logico
    Definir r2 Como Entero
    Definir r3 Como Real
    
    r1 <- (5 + 3 * 2) + 9 > 3 * 5 * (14 % 3)
    r2 <- 2 * ((4 - 10 + 8) / 2) + 36 * (1/2)
    r3 <- (260 / 12) + (54 % 3) - (85 % 7)
    r4 <- (48 < (2 * 3)) O ((2 * 7) < 12)
    r5 <- ((8 > 2) O (932 < 23)) Y (4 == 2)

    Escribir "El resultado de (5 + 3 * 2) + 9 > 3 * 5 * (14 % 3) es: ", r1
    Escribir "El resultado de 2 * ((4 - 10 + 8) / 2) + 36 * (1/2) es: ", r2
    Escribir "El resultado de (260 / 12) + (54 % 3) - (85 % 7) es: ", r3
    Escribir "El resultado de (48 < (2 * 3)) O ((2 * 7) < 12) es: ", r4
    Escribir "El resultado de ((8 > 2) O (932 < 23)) Y (4 == 2) es: ", r5
FinFuncion

//Ejercicio 1.2
Funcion dadoDosNumerosSRMDM()
	Definir num1, num2 Como Reales
	Definir suma, resta, multiplicacion, division, modulo como reales
	
	Escribir "Ingrese el primer n�mero:"
	Leer num1
	
	Escribir "Ingrese el segundo n�mero:"
	Leer num2
	
	suma <- num1 + num2
	resta <- num1 - num2
	multiplicacion <- num1 * num2
	division <- num1 / num2
	modulo <- num1 % num2
	
	Escribir ""
	Escribir "La suma es: ", suma
	Escribir "La resta es: ", resta
	Escribir "La multiplicaci�n es: ", multiplicacion
	Escribir "La divisi�n es: ", division
	Escribir "El m�dulo es: ", modulo
FinFuncion

//Ejercicio 1.3
Funcion calcularResolventeABC()
	Definir a, b, c, discriminante, resultado1, resultado2 Como Reales
	
	Escribir "Digite el valor de A:"
	Leer a
	Escribir "Digite el valor de B:"
	Leer b
	Escribir "Digite el valor de C:"
	Leer c
	
	discriminante <- b^2 - 4*a*c
	//Antes de calcular la ra�z cuadrada para asegurarte de que el discriminante b^2 - 4ac sea mayor o igual que cero.
	//Si el discriminante es negativo la ecuaci�n no tiene soluci�n real.
	
	Si discriminante >= 0 Entonces
		resultado1 <- (-b + raiz(discriminante)) / (2*a)
		resultado2 <- (-b - raiz(discriminante)) / (2*a)
		Escribir ""
		Escribir "El resultado de x1 es:", resultado2
		Escribir "El resultado de x2 es:", resultado1
	SiNo
		Escribir ""
		Escribir "En matem�ticas, la ra�z cuadrada de un n�mero negativo no tiene una soluci�n real."
		Escribir "No tiene soluci�n real."
	FinSi
FinFuncion

//Ejercicio 1.4
Funcion calcularHipotenusa()
	Definir lado1, lado2, hipotenusa como reales
	
	Escribir "Ingrese la longitud del primer lado del tri�ngulo en cm:"
	Leer lado1
	Escribir "Ingrese la longitud del segundo lado del tri�ngulo en cm:"
	Leer lado2
	
	hipotenusa <- raiz(lado1^2 + lado2^2)
	
	Escribir ""
	Escribir "La hipotenusa del tri�ngulo es: ", hipotenusa, " cm"
FinFuncion

//Ejercicio 1.5
Funcion unNumeroParImpar()
	Definir num como entero
	
	Escribir "Ingrese un numero: "
    Leer num
	
    Si num % 2 == 0 entonces
		Escribir ""
        Escribir "0, por que es par."
    Sino
		Escribir ""
        Escribir "1, por que es impar."
	Finsi
FinFuncion

//Ejercicio 1.6
Funcion numeroBinario4DBP()
	Definir numBinario, digito1, digito2, digito3, digito4, numDecimal Como Entero

    Escribir "Ingrese un n�mero binario de 4 d�gitos:"
    Leer numBinario

    digito4 <- numBinario % 10
    numBinario <- trunc(numBinario / 10)
    digito3 <- numBinario % 10
    numBinario <- trunc(numBinario / 10)
    digito2 <- numBinario % 10
    numBinario <- trunc(numBinario / 10)
    digito1 <- numBinario % 10

    numDecimal <- digito1 * 2^3 + digito2 * 2^2 + digito3 * 2^1 + digito4 * 2^0
	
	Escribir ""
    Escribir "El n�mero decimal correspondiente es: ", numDecimal
FinFuncion

//Ejercicio 1.7
Funcion dado1Num4DigUDCUM()
	Definir num, unidades, decenas, centenas, unidadesMil Como Entero
	
    Escribir "Ingrese un n�mero de cuatro d�gitos:"
    Leer num
	
    unidades <- trunc(num / 1) mod 10
    decenas <- trunc(num / 10) mod 10
    centenas <- trunc(num / 100) mod 10
    unidadesMil <- trunc(num / 1000) mod 10
	
	Escribir ""
    Escribir "Unidades: ", unidades
    Escribir "Decenas: ", decenas
    Escribir "Centenas: ", centenas
    Escribir "Unidades de mil: ", unidadesMil
FinFuncion

//Ejercicio 1.8
Funcion caracterDCE()
	Definir caract Como Caracter
	
    Escribir "Ingrese un car�cter:"
    Leer caract
	
    Si caract >= "0" Y caract <= "9" Entonces
        Escribir "El car�cter es un d�gito."
    Sino
		si caract >= "a" Y caract <= "z" O caract >= "A" Y caract <= "Z" Entonces
			Escribir ""
			Escribir "El car�cter es una consonante."
		SiNo
			Escribir ""
			Escribir "El car�cter es un car�cter especial."
		FinSi
	FinSi
FinFuncion

//Ejercicio 1.9
Funcion caracterIMaMe()
	Definir caracter1, caracter2 como caracter
	
	Escribir "Ingrese el primer car�cter:"
	Leer caracter1
	Escribir "Ingrese el segundo car�cter:"
	Leer caracter2
	
	Si caracter1 == caracter2 Entonces
		Escribir ""
		Escribir "El primer car�cter es igual al segundo car�cter"
	Sino
		Si caracter1 < caracter2 Entonces
			Escribir ""
            Escribir "El primer car�cter es menor que el segundo car�cter"
        Sino
			Escribir ""
            Escribir "El primer car�cter es mayor que el segundo car�cter"
        FinSi
	FinSi
FinFuncion

//Ejercicio 1.10
Funcion fraseMayMin()
	Definir frase Como Caracter
	
	Escribir "Escriba una frase:"
	Leer frase
	
	Escribir ""
	Escribir "Frase en Mayusculas: ", Mayusculas(frase)
	Escribir "Frase en Minusculas: ", Minusculas(frase)
FinFuncion


//Funciones para Estructuras condicionales 2

//Ejercicio 2.1
Funcion calcularABisiesto()
	Definir a�o, mes, dia como Entero
	
    Escribir "Ingrese el a�o:"
    Leer a�o
    Escribir "Ingrese el mes:"
    Leer mes
    Escribir "Ingrese el d�a:"
    Leer dia
	
    Si (a�o mod 400 = 0) O ((a�o mod 4 = 0) Y (a�o mod 100 <> 0)) Entonces
        Escribir "El a�o ", a�o, " es un a�o bisiesto."
    Sino
        Escribir "El a�o ", a�o, " no es un a�o bisiesto."
    FinSi
FinFuncion

//Ejercicio 2.2
Funcion determinarCapicua()
	Definir num, digito1, digito2, digito3, digito4, digito5 como Entero
    
    Escribir "Ingrese un n�mero de 5 d�gitos:"
    Leer num
	
    digito1 <- trunc(num / 10000)
    digito2 <- trunc(num / 1000) mod 10
	digito3 <- trunc(num / 100) mod 10
    digito4 <- trunc(num / 10) mod 10
    digito5 <- trunc(num) mod 10
    
    Si digito1 = digito5 Y digito2 = digito4 Entonces
		Escribir ""
        Escribir num, ", es capic�a."
    Sino
		Escribir ""
        Escribir num, ", no es capic�a."
    FinSi
FinFuncion

//Ejercicio 2.3
Funcion segMHD()
	Definir seg Como Entero
	Definir minutos, horas, dias Como Real
    
    Escribir "Ingrese la cantidad de segundos:"
    Leer seg
    
	Si seg > 0 Entonces
		minutos <- seg / 60
		horas <- minutos / 60
		dias <- horas / 24
		Escribir ""
		Escribir "Equivalente en minutos: ", minutos
		Escribir "Equivalente en horas: ", horas
		Escribir "Equivalente en d�as: ", dias
	SiNo
		Escribir ""
		Escribir "Error, tiene que ser un n�mero entero positivo."
	FinSi
FinFuncion

//Ejercicio 2.4
Funcion dadoTresNumeroEnterosABC()
	Definir num1, num2, num3 como enteros
	Escribir "Ingrese el primer valor:"
    Leer num1
	Escribir "Ingrese el segundo valor:"
    Leer num2
	Escribir "Ingrese el tercer valor:"
    Leer num3
	
    Si num1 == num2 y num1 == num3 entonces
		Escribir ""
        Escribir "Los n�meros son iguales."
    Sino
		Escribir ""
		Escribir "Los n�meros no son iguales."
	FinSi
	Si num1 > num2 y num1 > num3 entonces
		Escribir ""
		Escribir num1, " es el mayor."
		Si num2 > num3 entonces
			Escribir ""
			Escribir num2, " es el segundo mayor."
		Sino
			Escribir ""
			Escribir num3, " es el segundo mayor."
		FinSi
	Sino 
		Si num2 > num1 y num2 > num3 entonces
			Escribir ""
            Escribir num2, " es el mayor."
            Si num1 > num3 entonces
				Escribir ""
                Escribir num1, " es el segundo mayor."
            Sino
				Escribir ""
                Escribir num3, " es el segundo mayor."
            FinSi
        Sino
			Escribir ""
            Escribir num3, " es el mayor."
            Si num1 > num2 entonces
				Escribir ""
                Escribir num1, " es el segundo mayor."
            Sino
				Escribir ""
                Escribir num2, " es el segundo mayor."
            FinSi
        FinSi
    FinSi
FinFuncion

//Ejercicio 2.5
Funcion pagarEstacionamiento()
	Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida Como Entero
    Definir tiempoEstacionado Como Real
    Definir montoAPagar Como Real
    
    Escribir "Ingrese la hora de entrada del veh�culo:"
    Leer horaEntrada
    Escribir "Ingrese el minuto de entrada del veh�culo:"
    Leer minutoEntrada
    Escribir "Ingrese la hora de salida del veh�culo:"
    Leer horaSalida
    Escribir "Ingrese el minuto de salida del veh�culo:"
    Leer minutoSalida
    
    tiempoEstacionado <- (horaSalida - horaEntrada) + (minutoSalida - minutoEntrada) / 60
    
    Si tiempoEstacionado <= 0 Entonces
        montoAPagar <- 0
    Sino
		Si tiempoEstacionado <= 0.5 Entonces
			montoAPagar <- 0.5
		Sino
			montoAPagar <- tiempoEstacionado * 1.5
		FinSi
		Escribir ""
		Escribir "El monto a pagar es: ", montoAPagar, "$."
	FinSi
FinFuncion

//Ejercicio 2.6
Funcion calcularIMC()
	Definir pesoKg, estaturaMetros, imc Como Reales
	
	Escribir "Ingrese el peso en kilogramos:"
	Leer pesoKg
	Escribir "Ingrese la estatura en metros:"
	Leer estaturaMetros
	
	imc <- pesoKg / (estaturaMetros * estaturaMetros)
	
	Escribir ""
	Escribir "Valor del IMC: ", imc
	Si imc < 16 Entonces
		Escribir "Criterio de ingreso."
	Sino
		Si imc >= 16 Y imc <= 16.9 Entonces
			Escribir "Infra peso."
		Sino
			Si imc >= 17 Y imc <= 18.4 Entonces
				Escribir "Bajo peso."
			Sino
				Si imc >= 18.5 Y imc <= 24.9 Entonces
					Escribir "Peso normal."
				Sino
					Si imc >= 25 Y imc <= 29.9 Entonces
						Escribir "Sobrepeso."
					Sino
						Si imc >= 30 Y imc <= 34.9 Entonces
							Escribir "Obesidad pre-m�rbida."
						Sino
							Si imc >= 35 Y imc <= 45 Entonces
								Escribir "Obesidad m�rbida."
							Sino
								Si imc > 45 Entonces
									Escribir "Obesidad h�per-m�rbida."
								SiNo
									Escribir "Error..."
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//Ejercicio 2.7
Funcion dMhastaFIndicada()
	Definir diasPorMes, dia, mes Como Entero
	
	Escribir "Ingrese el d�a:"
	Leer dia
	Escribir "Ingrese el mes:"
	Leer mes
	
	diasPorMes <- 0
	
	Segun mes Hacer
		Caso 1:
			diasPorMes <- 0
		Caso 2:
			diasPorMes <- 31
		Caso 3:
			diasPorMes <- 31 + 28
		Caso 4:
			diasPorMes <- 31 + 28 + 31
		Caso 5:
			diasPorMes <- 31 + 28 + 31 + 30
		Caso 6:
			diasPorMes <- 31 + 28 + 31 + 30 + 31
		Caso 7:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30
		Caso 8:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30 + 31
		Caso 9:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31
		Caso 10:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30
		Caso 11:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31
		Caso 12:
			diasPorMes <- 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30
	FinSegun
	
	diasTranscurridos <- diasPorMes + dia - 1
	
	Escribir ""
	Escribir "D�as transcurridos desde el 1 de enero de 2014: ", diasTranscurridos
FinFuncion

//Ejercicio 2.8
Funcion num1_12Mes()
	Definir num como entero
	Escribir "Ingrese un n�mero correspondiente a los meses (1-12):"
	
	Leer num
	Segun num Hacer
		1:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Enero."
		2:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Febrero."
		3:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Marzo."
		4:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Abril."
		5:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Mayo."
		6:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Junio."
		7:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Julio."
		8:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Agosto."
		9:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Septiembre."
		10:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Octubre."
		11:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Noviembre."
		12:
			Escribir ""
			Escribir "El mes correspondiente a ", num, " es Diciembre."
		De Otro Modo:
			Escribir "ERROR, no existe mes correspondiente para ese n�mero."
	Fin Segun
FinFuncion

//Ejercicio 2.9
Funcion descuento20SiMayor1000()
	Escribir "Ingrese la cantidad de compras del cliente: "
	Leer compra
	
	Si compra > 1000 Entonces
		precioFinal <- compra - (compra * 0.20)
	SiNo
		precioFinal <- compra
	Fin Si
	
	Escribir ""
	Escribir "El precio a pagar es: ",preciofinal
FinFuncion

//Ejercicio 2.10
Funcion SRMDRDE()
	Definir num1, num2 como enteros
	
	Escribir "Ingrese el primer n�mero:"
	Leer num1
	Escribir "Ingrese el segundo n�mero:"
	Leer num2
	Escribir "Ingrese el operador (+, -, *, /, mod, div):"
	Leer operador
	
	Segun operador Hacer
		Caso "+":
			resultado <- num1 + num2
			Escribir "La suma es: ", resultado
		Caso "-":
			resultado <- num1 - num2
			Escribir "La resta es: ", resultado
		Caso "*":
			resultado <- num1 * num2
			Escribir "La multiplicaci�n es: ", resultado
		Caso "/":
			Si num2 <> 0 Entonces
				resultado <- num1 / num2
				Escribir "La divisi�n es: ", resultado
			Sino
				Escribir "Error: No se puede dividir entre 0."
			FinSi
		Caso "mod":
			resultado <- num1 mod num2
			Escribir "El resto es: ", resultado
		Caso "div":
			Si num2 <> 0 Entonces
				resultado <- num1 / num2
				Escribir "La divisi�n entera es: ", resultado
			Sino
				Escribir "Error: No se puede dividir entre 0."
			FinSi
			De Otro Modo
			Escribir "Error, operador inv�lido."
	FinSegun
FinFuncion


//Funciones para Estructuras iterativas 3

//Ejercicio 3.1
Funcion calcularDigitos()
	Definir num, i Como Entero
	
	i <- 0
	
	Escribir "Ingrese los n�meros:"
	Leer num
	
	Si num = 0 Entonces
		i<- 1
	Sino
		Mientras num > 0 Hacer
			num <- trunc(num / 10)
			i <- i + 1
		FinMientras
	FinSi
	
	Escribir ""
	Escribir "El n�mero tiene ", i, " d�gitos."
FinFuncion

//Ejercicio 3.2
Funcion numeroCapicua()
	Definir num, numeroInvertido, digito, cociente como Entero
    Definir esCapicua como Logico
    
    Escribir "Ingrese un n�mero:"
    Leer num
    
    numeroInvertido <- 0
    cociente <- num
    
    Mientras cociente > 0 Hacer
        digito <- cociente mod 10
        numeroInvertido <- numeroInvertido * 10 + digito
        cociente <- trunc(cociente / 10)
    FinMientras
    
    esCapicua <- num = abs(numeroInvertido) //Valor absoluto
    
    Si esCapicua Entonces
		Escribir ""
        Escribir "El n�mero es capic�a."
    Sino
		Escribir ""
        Escribir "El n�mero no es capic�a."
    FinSi
FinFuncion

//Ejercicio 3.3
Funcion divisoresNum()
	Definir num, divisor como reales
	Escribir "Escriba un n�mero:"
	Leer num
	Escribir "Divisores del n�mero ", num, ":"
	
	Para divisor <- 1 Hasta num Hacer
		Si num % divisor = 0 Entonces
			Escribir ""
			Escribir divisor
		FinSi
	FinPara
FinFuncion

//Ejercicio 3.4
Funcion sumaDivisores()
	Definir num, divisor, suma como reales
	Escribir "Escriba un n�mero:"
	Leer num
	
	suma <- 0
	
	Para divisor <- 1 Hasta num Hacer
		Si num % divisor = 0 Entonces
			suma <- suma + divisor
		FinSi
	FinPara
	
	Escribir ""
	Escribir "La suma de sus divisores es igual a: ", suma
FinFuncion

//Ejercicio 3.5
Funcion cantidadDivisoresN()
	Definir num, divisor, contador como reales
	
	Escribir "Escriba un n�mero:"
	Leer num
	
	contador <- 0
	
	Para divisor <- 1 Hasta num Hacer
		Si num % divisor = 0 Entonces
			contador <- contador + 1
		FinSi
	FinPara
	
	Escribir ""
	Escribir "La cantidad de divisores es: ", contador
FinFuncion

//Ejercicio 3.6
Funcion verificarNumeroPerfecto()
	Definir num, sumDivisores como Entero
	
    sumDivisores <- 0
	
    Escribir "Ingrese un n�mero:"
    Leer num
	
    Para i <- 1 Hasta num/2 Con Paso 1 Hacer
        Si num mod i = 0 Entonces
            sumDivisores <- sumDivisores + i
        FinSi
    FinPara
	
    Si sumDivisores = num Entonces
		Escribir ""
        Escribir "El n�mero ", num, " es un n�mero perfecto."
    Sino
		Escribir ""
        Escribir "El n�mero ", num, " no es un n�mero perfecto."
    FinSi
FinFuncion

//Ejercicio 3.7
Funcion determinarPrimo()
	Definir num, i, raizCuadrada como Entero
	Definir primo como Logico
	
	Escribir "Ingrese un numero:"
	Leer num
	
	Si num >= 2 Entonces
		primo <- Verdadero
	Sino
		primo <- Falso
	FinSi
	
	raizCuadrada <- trunc(raiz(num))
	
	i <- 2
	
	Mientras i <= raizCuadrada Y primo Hacer
		Si num mod i = 0 Entonces
            primo <- Falso
		FinSi
		i <- i + 1
	FinMientras
	
	Si primo Entonces
		Escribir ""
		Escribir num, " es un n�mero primo."
	Sino
		Escribir ""
		Escribir num, " no es un n�mero primo."
	FinSi
FinFuncion

//Ejercicio 3.8
Funcion funcionFactorialI()
	Definir num, factorial como Entero
	
    factorial <- 1
	
    Escribir "Ingrese un n�mero:"
    Leer num
	
    Si num >= 0 Entonces
        Para i <- 1 Hasta num Con Paso 1 Hacer
            factorial <- factorial * i
        FinPara
		Escribir ""
        Escribir "El factorial de ", num, " es: ", factorial, "."
    Sino
		Escribir ""
        Escribir "El n�mero no puede ser negativo."
    FinSi
FinFuncion

//Ejercicio 3.9
Funcion contrase10()
	Definir contrase�a Como Cadena
	
    contrase�a <- ""
    
    Mientras longitud(contrase�a) < 10 Hacer
        Escribir "Ingrese una contrase�a:"
        Leer contrase�a
        
        Si longitud(contrase�a) < 10 Entonces
			Escribir ""
            Escribir "La contrase�a debe tener al menos 10 d�gitos, intentelo de nuevo..."
        FinSi
    FinMientras
	
    Escribir ""
    Escribir "Contrase�a definida correctamente."
FinFuncion

//Ejercicio 3.10
Funcion numMayorMenor()
	Definir num, numMayor, numMenor como Entero
	
    numMayor <- -9999999
    numMenor <- 9999999
	
    Escribir "Ingrese n�meros para saber el mayor (0 para terminar):"
    Repetir
        Leer num
        Si num <> 0 Entonces
            Si num > numMayor Entonces
                numMayor <- num
            FinSi
            Si num < numMenor Entonces
                numMenor <- num
            FinSi
        FinSi
    Hasta Que num = 0
	
	Escribir ""
	
    Si numMayor <> -9999999 Entonces
        Escribir "El n�mero mayor de la secuencia es: ", numMayor, "."
    FinSi
    Si numMenor <> 9999999 Entonces
        Escribir "El n�mero menor de la secuencia es: ", numMenor, "."
    FinSi
FinFuncion

//Ejercicio 3.11
Funcion secuenciaEnterosTerminadaCero()
	Definir edad, peso, estatura Como Entero
    Definir edadPromedio, pesoPromedio, estaturaPromedio Como Real
    Definir contadorEdad18_25, contadorMayores36 Como Entero
    Definir sumaPeso18_35 Como Real
    Definir cantidadPersonas Como Entero
	
    edadPromedio = 0; pesoPromedio = 0; estaturaPromedio = 0;
    contadorEdad18_25 = 0; contadorMayores36 = 0; sumaPeso18_35 = 0;
    cantidadPersonas = 0;
	
    Escribir "Ingrese la edad, peso y estatura de cada persona (terminar con cero):"
	
    Repetir
        Leer edad, peso, estatura
		
        Si edad <> 0 Entonces
            edadPromedio = edadPromedio + edad
            pesoPromedio = pesoPromedio + peso
            estaturaPromedio = estaturaPromedio + estatura
			
            Si edad >= 18 Y edad <= 25 Entonces
                contadorEdad18_25 = contadorEdad18_25 + 1
            FinSi
			
            Si edad > 36 Entonces
                contadorMayores36 = contadorMayores36 + 1
            FinSi
			
            Si edad >= 18 Y edad <= 35 Entonces
                sumaPeso18_35 = sumaPeso18_35 + peso
            FinSi
			
            cantidadPersonas = cantidadPersonas + 1
        FinSi
		
    Hasta Que edad = 0
	
    edadPromedio = edadPromedio / cantidadPersonas
    pesoPromedio = pesoPromedio / cantidadPersonas
    estaturaPromedio = estaturaPromedio / cantidadPersonas
	
	Escribir ""
    Escribir "Edad promedio de todas las personas en la muestra:", edadPromedio
    Escribir "Peso promedio de todas las personas en la muestra:", pesoPromedio
    Escribir "Estatura promedio de todas las personas en la muestra:", estaturaPromedio
    Escribir "Cantidad de personas con edad entre los 18 y 25 a�os:", contadorEdad18_25
    Escribir "Cantidad de personas mayores a 36 a�os:", contadorMayores36
	
    Si contadorEdad18_25 > 0 Entonces
        promedioPeso18_35 = sumaPeso18_35 / contadorEdad18_25
        Escribir "Promedio de peso de las personas con edades entre 18 y 35 a�os:", promedioPeso18_35
    FinSi
FinFuncion

//Ejercicio 3.12
Funcion tablaM1a10()
	Definir num, multiplicador, resultado como Entero
	
    Para num <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir "Tabla de multiplicar del ", num, ":"
        Para multiplicador <- 1 Hasta 10 Con Paso 1 Hacer
            resultado <- num * multiplicador
            Escribir num, " x ", multiplicador, " = ", resultado
        FinPara
        Escribir ""
    FinPara
FinFuncion

//Ejercicio 3.13
Funcion multiplicarDosNumSumaS()
	Definir n1, n2, sum, i Como Entero
	Escribir "Ingrese un numero:"
	Leer n1
	Escribir "Ingrese otro numero:"
	Leer n2
	
	Sum <- 0
	
	Para i <- 1 Hasta n2 Con Paso 1 Hacer
		sum <- sum + n1
		Escribir sum - n1, " + ", n1, " = ", sum
	Fin Para
	
	Escribir ""
	Escribir "El producto de los 2 numero: ", n1, " x ", n2, " = ", sum
FinFuncion

//Ejercicio 3.14
Funcion calcularPromedio()
	Escribir "Ingrese una serie de n�meros positivos (Ingrese 0 para terminar):"
	Leer num
	
	suma <- 0
	i <- 0
	
	Mientras num <> 0 Y num >= 1 Hacer
		suma <- suma + num
		i <- i+ 1
		Leer num
	FinMientras
	
	Si i > 0 Entonces
		promedio <- suma / i
		Escribir ""
		Escribir "El promedio de la serie es: ", promedio, "."
	Sino
		Escribir ""
		Escribir "No se ingresaron n�meros en la serie."
	FinSi
FinFuncion

//Ejercicio 3.15
Funcion dividirDosNumRestasS()
	Definir num1, num2, coc Como Enteros
	Escribir "Ingrese num1:"
	Leer num1
	Escribir "Ingrese num2:"
	Leer num2
	
	coc <- 0
	
	Mientras num1>=num2 Hacer
		num1 <- num1 - num2
		coc <- coc + 1
	FinMientras
	
	Escribir ""
	Escribir "El cociente es: ", coc, "."
	Escribir "El resto es: ", num1, "."
FinFuncion

//ALGORITMO DEL PROYECTO
Algoritmo Proyecto
	Definir menuPrincipal, menuSelectivas, menuCondicionales, menuIterativas Como Caracter
	Definir opcMenu, opcS, opcC, opcI Como Caracter
	Definir pos, lim Como Entero
	
	Dimension menuPrincipal[4], menuSelectivas[11], menuCondicionales[11], menuIterativas[16]
	
	//Arreglos del menu principal
	menuPrincipal[0] = "1) Estructuras Selectivas"
	menuPrincipal[1] = "2) Estructuras Condicionales"
	menuPrincipal[2] = "3) Estructuras Iterativas"
	menuPrincipal[3] = "4) Salir"
	
	//Arreglos submen� de selectivas
	menuSelectivas[0] = "1) Prioridad de operadores"
	menuSelectivas[1] = "2) Dado 2 n�meros: + - * / %"
	menuSelectivas[2] = "3) Dado 3 n�meros: Calcular la resolvente"
	menuSelectivas[3] = "4) Dado 2 lados de un tri�ngulo en cm, calcular hipotenusa"
	menuSelectivas[4] = "5) Dado 1 n�mero, imprimir 0 si es par y 1 si es impar"
	menuSelectivas[5] = "6) Dado 1 n�mero binario de 4 digitos: imprimir su bit pariedad, bit de pariedad = 1 si el n�mero de bits 1 es impar y 0 en caso contrario"
	menuSelectivas[6] = "7) Dado un n�mero de 4 digistos: Imprimir por separado las unidades, decenas, centenas y unidades"
	menuSelectivas[7] = "8) Dado un car�cter: Indicar si es un digito, una consonante o un car�cter especial"
	menuSelectivas[8] = "9) Dado dos caracteres: Indicar si el primer caracter es igual, mayor o menor que el segundo"
	menuSelectivas[9] = "10) Dada una frase: Presentarla en may�sculas y min�sculas"
	menuSelectivas[10] = "11) Salir"
	
	//Arreglos submen� de condicionales
	menuCondicionales[0] = "1) Dada una fecha: Calcular si es a�o bisiesto o no"
	menuCondicionales[1] = "2) Dado un n�mero entero cuya cantidad de digitos es 5: Determinar si es capic�a"
	menuCondicionales[2] = "3) Dado un valor positivo que representa segundos: Indicar su equivalente a minutos, horas y d�as"
	menuCondicionales[3] = "4) Dado 3 n�meros enteros ABC: Iguales, mayor, 2�mayor"
	menuCondicionales[4] = "5) En un estacionamiento el minto a pagar se calcula multiplicando el n�mero dehoras que permaneci� el autom�vil dentro del estacionamiento por $1.5 la hora.La fracion en minutos de (1- 29 minutos) se cobra $0.5. Pasado de 30 minutos se cobra el valor de la hora: Algoritmo que calcule a partir de la hora de entrada y la hora de salida de un veh�culo (las mismas corresponden a un mismo d�a) calcule el monto a pagar por el due�o del veh�culo"
	menuCondicionales[5] = "6) Calcular el �ndice de masa corporal"
	menuCondicionales[6] = "7) Algoritmo que recibe una fecha (d�a y mes) del 2014: Imprimir cuantos d�as han pasado hasta la fecha indicada"
	menuCondicionales[7] = "8) Dado un n�mero [1...12] mostrar mes correspondiente"
	menuCondicionales[8] = "9) En almacen: 20% de descuento si la compra es > 1000"
	menuCondicionales[9] = "10) Dado dos n�meros y un operardor (+,-,*,/,mod,div): Realizar la suma, resta, multiplicaci�n, divisi�n, resto y divisi�n entera(div) de los dos n�meros seg�n el operador ingresado"
	menuCondicionales[10] = "11) Salir"
	
	//Arreglos submen� de iterativas
	menuIterativas[0] = "1) Dado un n�mero: Calcular e informar cu�ntos digitos tiene"
	menuIterativas[1] = "2) Dado un n�mero: Determinar si es capic�a"
	menuIterativas[2] = "3) Divisores de un n�mero"
	menuIterativas[3] = "4) Suma de divisores de un n�mero"
	menuIterativas[4] = "5) Presentar la cantidad de los divisores de un n�mero"
	menuIterativas[5] = "6) Indicar si un n�mero es perfecto"
	menuIterativas[6] = "7) Dado un n�mero: Determinar si es un n�mero primo"
	menuIterativas[7] = "8) Dado un valor entero: Haga el calculo de la funci�n factorial"
	menuIterativas[8] = "9) Dado un numero entero = contrase�a: La contrase�a > 10 digitos es segura, caso contrario volver a intentar"
	menuIterativas[9] = "10) Dada una secuencia de n�meros (terminada en 0): Indique el numero mayor y menor sin contar el 0"
	menuIterativas[10] = "11) Se tiene una secuencia de enteros terminada en 0 que corresponde a la edad, peso y estatura de una muestra de hombres y mujeres mayores de 18 a�os: Realizar un estudio con el fin de conocer la edad promedio, peso promedio, estatura promedio de todas las personas en la muestra; cuantas personas hay entre los 18 y 25 a�os, cuantas personas son mayores de 36 a�os y cu�l es el promedio de peso de las personas con edades entre 18 y 35"
	menuIterativas[11] = "12) Tabla de multiplicar del 1 al 10"
	menuIterativas[12] = "13) Algoritmo que multiplique dos n�meros por medio de sumas sucesivas"
	menuIterativas[13] = "14) Dado n�meros positivos: Calcular el promedio"
	menuIterativas[14] = "15) Algotirmo que divida dos n�meros por medio de restas sucesivas"
	menuIterativas[15] = "16) Salir"
	
	opcMenu = ""
	
	Mientras opcMenu <> "4" Hacer
		Borrar Pantalla
		opcMenu = presentarMenu("       MEN� PRINCIPAL", menuPrincipal, 4)
		Segun opcMenu Hacer
			"1":
				opcS = ""
				Mientras opcS <> "11" Hacer
					opcS = presentarMenu("MEN�: Estructuras selectivas", menuSelectivas, 11)
					Segun opcS Hacer
						"1":
							Escribir "" //Espaciado entre "Elija una opci�n y la funcion"
							Escribir "Prioridad de operadores:"
							Escribir ""
							prioridadOperadores()
							Esperar 6 Segundos //6 segundos para poder leer mejor los resutado
						"2":
							Escribir ""
							Escribir "Dado dos n�meros: + - * / %:"
							dadoDosNumerosSRMDM()
							Esperar 6 Segundos
						"3":
							Escribir ""
							Escribir "Dado 3 n�meros: Calcular la resolvente:"
							calcularResolventeABC()
							Esperar 6 Segundos
						"4":
							Escribir ""
							Escribir "Dado 2 lados de un tri�ngulo en cm, calcular hipotenusa:"
							calcularHipotenusa()
							Esperar 6 Segundos
						"5":
							Escribir ""
							Escribir "Dado 1 n�mero, imprimir 0 si es par y 1 si es impar:"
							unNumeroParImpar()
							Esperar 6 Segundos
						"6":
							Escribir ""
							Escribir "6) Dado 1 n�mero binario de 4 digitos: imprimir su bit pariedad, bit de pariedad = 1 si el n�mero de bits 1 es impar y 0 en caso contrario:"
							numeroBinario4DBP()
							Esperar 6 Segundos
						"7":
							Escribir ""
							Escribir "Imprimir por separado las unidades, decenas, centenas y unidades:"
							dado1Num4DigUDCUM()
							Esperar 6 Segundos
						"8":
							Escribir ""
							Escribir "Indicar si es un digito, una consonante o un car�cter especial:"
							caracterDCE()
							Esperar 6 Segundos
						"9":
							Escribir ""
							Escribir "Indicar si el primer caracter es igual, mayor o menor que el segundo:"
							caracterIMaMe()
							Esperar 6 Segundos
						"10":
							Escribir ""
							Escribir "Presentarla en may�sculas y min�sculas:"
							fraseMayMin()
							Esperar 6 Segundos
						"11":
							Escribir ""
							Escribir "Regresando al men� principal..."
							Esperar 3 Segundos
						De Otro Modo:
							//Agregado "CONTEO ATRAS DE 3 SEGUNDOS"
							Escribir ""
							Escribir "Opci�n invalida, intenta nuevamente en unos segundos:"
							Esperar 1 Segundos
							Escribir " 3" Sin Saltar; Esperar 1 Segundos //Con ; para ahorrar lineas
							Escribir " 2" Sin Saltar; Esperar 1 Segundos
							Escribir " 1..." Sin Saltar; Esperar 1 Segundos
					FinSegun
				FinMientras
			"2":
				opcC = ""
				Mientras opcC <> "11" Hacer
					opcC = presentarMenu("MEN�: Estructuras condicionales", menuCondicionales, 11)
					Segun opcC Hacer
						"1":
							Escribir ""
							Escribir "Calcular si es a�o bisiesto o no:"
							calcularABisiesto()
							Esperar 6 Segundos
						"2":
							Escribir ""
							Escribir "Determinar si es capic�a:"
							determinarCapicua()
							Esperar 6 Segundos
						"3":
							Escribir ""
							Escribir "Indicar su equivalente a minutos, horas y d�as:"
							segMHD()
							Esperar 6 Segundos
						"4":
							Escribir ""
							Escribir "Dado 3 n�meros enteros ABC: Iguales, mayor, 2�mayor:"
							dadoTresNumeroEnterosABC()
							Esperar 6 Segundos
						"5":
							Escribir ""
							Escribir "Algoritmo que calcule a partir de la hora de entrada y la hora de salida de un veh�culo (las mismas corresponden a un mismo d�a) calcule el monto a pagar por el due�o del veh�culo:"
							pagarEstacionamiento()
							Esperar 6 Segundos
						"6":
							Escribir ""
							Escribir "Calcular el �ndice de masa corporal:"
							calcularIMC()
							Esperar 6 Segundos
						"7":
							Escribir ""
							Escribir "Imprimir cuantos d�as han pasado hasta la fecha indicada:"
							dMhastaFIndicada()
							Esperar 6 Segundos
						"8":
							Escribir ""
							Escribir "Dado un n�mero [1...12] mostrar mes correspondiente:"
							num1_12Mes()
							Esperar 6 Segundos
						"9":
							Escribir ""
							Escribir "20% de descuento si la compra es > 1000:"
							descuento20SiMayor1000()
							Esperar 6 Segundos
						"10":
							Escribir ""
							Escribir "Realizar la suma, resta, multiplicaci�n, divisi�n, resto y divisi�n entera(div) de los dos n�meros seg�n el operador ingresado:"
							SRMDRDE()
							Esperar 6 Segundos
						"11":
							Escribir ""
							Escribir "Regresando al men� principal..."
							Esperar 3 Segundos
						De Otro Modo:
							Escribir ""
							Escribir "Opci�n invalida, intenta nuevamente en unos segundos:"
							Esperar 1 Segundos
							Escribir " 3" Sin Saltar; Esperar 1 Segundos //Con ; para ahorrar lineas
							Escribir " 2" Sin Saltar; Esperar 1 Segundos
							Escribir " 1..." Sin Saltar; Esperar 1 Segundos
					FinSegun
				FinMientras
			"3":
				opcI = ""
				Mientras opcI <> "16" Hacer
					opcI = presentarMenu("MEN�: Estructuras selectivas", menuIterativas, 16)
					Segun opcI Hacer
						"1":
							Escribir ""
							Escribir "Calcular e informar cu�ntos digitos tiene:"
							calcularDigitos()
							Esperar 6 Segundos
						"2":
							Escribir ""
							Escribir "Determinar si es capic�a:"
							numeroCapicua()
							Esperar 6 Segundos
						"3":
							Escribir ""
							Escribir "Divisores de un n�mero:"
							divisoresNum()
							Esperar 6 Segundos
						"4":
							Escribir ""
							Escribir "Suma de divisores de un n�mero:"
							sumaDivisores()
							Esperar 6 Segundos
						"5":
							Escribir ""
							Escribir "Presentar la cantidad de los divisores de un n�mero"
							cantidadDivisoresN()
							Esperar 6 Segundos
						"6":
							Escribir ""
							Escribir "Indicar si un n�mero es perfecto:"
							verificarNumeroPerfecto()
							Esperar 6 Segundos
						"7":
							Escribir ""
							Escribir "Determinar si es un n�mero primo:"
							determinarPrimo()
							Esperar 6 Segundos
						"8":
							Escribir ""
							Escribir "Calculo de la funci�n factorial:"
							funcionFactorialI()
							Esperar 6 Segundos
						"9":
							Escribir ""
							Escribir "La contrase�a > 10 digitos es segura, caso contrario volver a intenta:r"
							contrase10()
							Esperar 6 Segundos
						"10":
							Escribir ""
							Escribir "Indique el numero mayor y menor sin contar el 0:"
							numMayorMenor()
							Esperar 6 Segundos
						"11":
							Escribir ""
							Escribir "Realizar un estudio con el fin de conocer la edad promedio, peso promedio, estatura promedio de todas las personas en la muestra; cuantas personas hay entre los 18 y 25 a�os, cuantas personas son mayores de 36 a�os y cu�l es el promedio de peso de las personas con edades entre 18 y 35:"
							secuenciaEnterosTerminadaCero()
							Esperar 6 Segundos
						"12":
							Escribir ""
							Escribir "Tabla de multiplicar del 1 al 10:"
							tablaM1a10()
							Esperar 6 Segundos
						"13":
							Escribir ""
							Escribir "Multiplicar dos n�meros por medio de sumas sucesivas:"
							multiplicarDosNumSumaS()
							Esperar 6 Segundos
						"14":
							Escribir ""
							Escribir "Calcular el promedio:"
							calcularPromedio()
							Esperar 6 Segundos
						"15":
							Escribir ""
							Escribir "Dividir dos n�meros por medio de restas sucesivas:"
							dividirDosNumRestasS()
							Esperar 6 Segundos
						"16":
							Escribir ""
							Escribir "Regresando al men� principal..."
							Esperar 3 Segundos
						De Otro Modo:
							Escribir ""
							Escribir "Opci�n invalida, intenta nuevamente en unos segundos:"
							Esperar 1 Segundos
							Escribir " 3" Sin Saltar; Esperar 1 Segundos //Con ; para ahorrar lineas
							Escribir " 2" Sin Saltar; Esperar 1 Segundos
							Escribir " 1..." Sin Saltar; Esperar 1 Segundos
					FinSegun
				FinMientras
			"4":
				Escribir ""
				Escribir "Gracias por usar este sistema."
				Esperar 3 Segundos
			De Otro Modo:
				Escribir ""
				Escribir "Opci�n invalida, intenta nuevamente en unos segundos:"
				Esperar 1 Segundos
				Escribir " 3" Sin Saltar; Esperar 1 Segundos //Con ; para ahorrar lineas
				Escribir " 2" Sin Saltar; Esperar 1 Segundos
				Escribir " 1..." Sin Saltar; Esperar 1 Segundos
		FinSegun
	FinMientras
FinAlgoritmo

//Funciones para Estructuras Selectivas 1
//Ejercicio 1.1 hecho
//Ejercicio 1.2 hecho
//Ejercicio 1.3 hecho
//Ejercicio 1.4 hecho
//Ejercicio 1.5 hecho
//Ejercicio 1.6 hecho
//Ejercicio 1.7 hecho
//Ejercicio 1.8 hecho
//Ejercicio 1.9 hecho
//Ejercicio 1.10 hecho
//Funciones para Estructuras condicionales 2
//Ejercicio 2.1 hecho
//Ejercicio 2.2 hecho
//Ejercicio 2.3 hecho
//Ejercicio 2.4 hecho
//Ejercicio 2.5 hecho
//Ejercicio 2.6 hecho
//Ejercicio 2.7 hecho
//Ejercicio 2.8 hecho
//Ejercicio 2.9 hecho
//Ejercicio 2.10 hecho
//Funciones para Estructuras iterativas 3
//Ejercicio 3.1 hecho
//Ejercicio 3.2 hecho
//Ejercicio 3.3 hecho
//Ejercicio 3.4 hecho
//Ejercicio 3.5 hecho
//Ejercicio 3.6 hecho
//Ejercicio 3.7 hecho
//Ejercicio 3.8 hecho
//Ejercicio 3.9 hecho
//Ejercicio 3.10 hecho
//Ejercicio 3.11 hecho
//Ejercicio 3.12 hecho
//Ejercicio 3.13 hecho
//Ejercicio 3.14 hecho
//Ejercicio 3.15 hecho