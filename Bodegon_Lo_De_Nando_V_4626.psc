Algoritmo Bodegon_Lo_De_Nando_V_4626

        // En este sector se creó variables las cuales almacenaran valores de lo cuales
	// almacenaran resultados y en otros casos iran cambiando , también se creó   
	// constantes tanto para almacenar montos ya definidos para su uso en operaciones matematicas .
	// Las variables y constantes creadas fueron de tipo entero como de tipo real y de tipo caracter.
	
	definir menu Como Entero
	definir menu_bebidas,menu_pastas,menu_postre,cant Como Entero
	definir prec_agu,prec_gas,prec_cer Como real
	definir mont_agu,mont_gas,mont_cer Como Real
	definir acum_agu,acum_gas,acum_cer Como Real
	definir cant_agu,cant_gas,cant_cer Como Entero
	definir salir,salir_bebidas,salir_pastas,salir_postres Como Caracter
	definir prec_tal,prec_rav,prec_can Como real
	definir mont_tal,mont_rav,mont_can Como Real
	definir acum_tal,acum_rav,acum_can Como Real
	definir cant_tal,cant_rav,cant_can Como Entero
	definir prec_fla,prec_tir,prec_hel Como real
	definir mont_fla,mont_tir,mont_hel Como Real
	definir acum_fla,acum_tir,acum_hel Como Real
	definir cant_fla,cant_tir,cant_hel Como Entero
	Definir bebidas_total,pastas_total,postres_total como real
	Definir total_parcial,propina,pago_total Como Real
	Definir nombre Como Caracter
	Definir cont Como Entero
	Definir contra Como Caracter
	definir mesa,i,j,ticket como entero

       // Seguido de nuestra creacion de variables y constantes inicializamos las mismas,	
	salir ="s"
	salir_bebidas = "s"
	salir_pastas = "s"
	nombre = "Nando"
	contra = "luba"
	cont = 1
	mesa = 0
	i = 0
	j = 0
	ticket = 0
	
	prec_agu = 100
	prec_gas = 200
	prec_cer = 300
	prec_tal = 1000
	prec_rav = 2000
	prec_can = 3000
	prec_fla = 600.55
	prec_tir = 900.45
	prec_hel = 800.20
	acum_agu = 0
	acum_gas = 0
	acum_gas = 0
	acum_cer = 0
	cant_agu = 0
	cant_gas = 0
	cant_cer = 0
	acum_tal = 0
	acum_rav = 0
	acum_can = 0
	cant_tal = 0
	cant_rav = 0
	cant_can = 0
	acum_fla = 0
	acum_tir = 0
	acum_hel = 0
	cant_fla = 0
	cant_tir = 0
	cant_hel = 0
	bebidas_total = 0
	pastas_total = 0
	postres_total = 0
	pago_total = 0
	total_parcial = 0
	propina = 0
	mesa = 0

        // se creo un mensaje el cual se creó con la idea de dar una apariencia de fondo de pantalla
	// que se activa al presionar una tecla.

	Escribir "**********************************"
	Escribir ""
	Escribir "*** Bodegon Lo De Nando ***"
	Escribir ""
	Escribir "***********************************"
	Esperar Tecla
	Limpiar Pantalla

        // Una vez dejado atraz el fondo de pantalla empezamos realizando un Bucle Mientras el
	// cual se creó con la finalidad de dar segurida al personal en funsiones lo cual dara 
	// una tranquilidad de que lo que nenere a travez de su ingreso solo le correspondera sol.
	// a el en este caso su identidad se verifica pidiendo que ingrese su clave la cual solo
	// lo dejara en incurrir en tres intentos para lo cual se genera un cont <= 3 en cual llevara
	// un control de las cantidad de intentos de ingreso de su clave.	
	
	Escribir " ***   Por favor controlar Usuario   ***"
	
	Mientras cont <= 3 Hacer
		
		Escribir "Ingresa tu Clave : "
		leer contra
		
		si contra = "luba" Entonces 
			Limpiar Pantalla
			Escribir "*** Nando Bienvenido al Sistema ***"
			Escribir ""
			cont = 4
		SiNo
			si cont = 3 Entonces
				Escribir "*** Contraseña Incorrecta ***"
			FinSi
		FinSi
		
		cont = cont + 1
		
	FinMientras

        // En este paso realizamos un ingreso el cual nos permitirá asignar el número de mesa 
	// lo cual evitara que dos mesas diferentes puedan llevar el mismo numero para lo cual
	// trabajamos con el Bucle Para que nos permitrira asignar dicho numero y i que forma
	// la parte que nos entrega el numero de mesa que su resultado fnal lo veremos en la 
	// impresión del ticket.
		
	Escribir "Ingresa la mesa a abrir :"
	leer mesa
	
	Para i <- 1 Hasta mesa Con Paso 1 Hacer
		escribir "La mesa abierta es :",i
		Limpiar Pantalla
	Fin Para

        // Ahora nos encontramos el la creación de un menu el cual nos redireccionará a otros
	// submenú el cual nos permitira el ingreso de los pedidos realizados por los clientes 
	// hacia el personal en función un Bule de Repetir al cual se le anidarón dentro del mismo
	// otro Bucle Repetir acompañado de un Segun, tambien se creó un Mientras acompañado de un Segun 
	// dentro de este proceso se realizaron operaciones matematicas que generan un calculo parcial
	// de los pedidos consumidos para asi despues poder contar con los calculos parciales que se 
	// terminaran al finalizar estos Bucles y asi poder realizar el calculo final.	
	Repetir
		
		Limpiar Pantalla
		Escribir " *** Ingresa la oprecaion a Realizar *** "
		Escribir ""
	    Escribir "******************"
		Escribir " 1 . Bebidas "
		Escribir " 2 . Pastas "
		Escribir " 3 . Postres "
		Escribir "******************"
		Escribir ""
		leer menu
		
		Repetir
			
			Limpiar Pantalla
			Escribir "*******************"
			Escribir " 1 . Aguas "
			Escribir " 2 . Gaseosas "
			Escribir " 3 . Cervezas "
			Escribir " 4 . Salir "
			Escribir "********************"
			Escribir ""
			leer menu_bebidas
			
			Escribir "Ingresar cantidad :"
			leer cant
			
			Segun menu_bebidas Hacer
				1:  // Según lo narrado anteriormente esta parte nos genera
				    // uno de los primeros calculos parciales.					
                                        mont_agu = cant * prec_agu
					acum_agu= acum_agu + mont_agu
					cant_agu = cant_agu + cant
				2:
					mont_gas = cant * prec_gas
					acum_gas = acum_gas + mont_gas
					cant_gas = cant_gas + cant
				3:
					mont_cer = cant * prec_cer
					acum_cer = acum_cer + mont_cer
					cant_cer = cant_cer + cant
				4:
					Esperar Tecla
					
				De Otro Modo:
					
					Escribir "...Operacion Inexistente..."
			Fin Segun
			
			Escribir "Deseas realizar otra operacion"
			leer salir_bebidas
			Limpiar Pantalla
			
		hasta Que salir_bebidas <> "s"
                // Ahora podemos visualizar la suma de los calculos parciales conseguidos en el paso 
		// anterior quiero resaltar tambien que en este paso se consigue un segundo calculo 
		// parcial el cual antes del final nos llevará al calculo general.
				
		bebidas_total = acum_agu + acum_gas + acum_cer
		
		
		Mientras salir_pastas = "s" Hacer
			
			Limpiar Pantalla
			Escribir "*********************"
			Escribir " 1 . Tallarines "
			Escribir " 2 . Ravioles "
			Escribir " 3 . Canelones "
			Escribir " 4 . Salir "
			Escribir "**********************"
			Escribir ""
			leer menu_pastas
			
			Escribir "Ingresar cantidad :"
			leer cant
			
			Segun menu_pastas Hacer
				1:
					mont_tal = cant * prec_tal
					acum_tal = acum_tal + mont_tal
					cant_tal = cant_tal + cant
				2:
					mont_rav = cant * prec_rav
					acum_rav = acum_rav + mont_rav
					cant_rav = cant_rav + cant
				3:
					mont_can = cant * prec_can
					acum_can = acum_can + mont_can
					cant_can = cant_can + cant
				4:  
					Esperar Tecla
					
				De Otro Modo:
					Escribir "...Operacion Inexistente..."
			Fin Segun
			
			Escribir "Deseas realizar otra operacion"
			leer salir_pastas
			Limpiar Pantalla
			
		FinMientras
		
		pastas_total = acum_tal + acum_rav + acum_can
		
		Repetir
			
			Limpiar Pantalla
			Escribir "******************"
			Escribir " 1 . Flan "
			Escribir " 2 . Tiramisu "
			Escribir " 3 . Helado "
			Escribir " 4 . Salir "
			Escribir "*******************"
			Escribir ""
			leer menu_postre
			
			Escribir "Ingresar cantidad :"
			leer cant
			
			Segun menu_postre Hacer
				1:
					mont_fla = cant * prec_fla
					acum_fla= acum_fla + mont_fla
					cant_fla = cant_fla + cant
				2:
					mont_tir = cant * prec_tir
					acum_tir = acum_tir + mont_tir
					cant_tir = cant_tir + cant
				3:
					mont_hel = cant * prec_hel
					acum_hel = acum_hel + mont_hel
					cant_hel = cant_hel + cant
				4:
					Esperar Tecla
					
				De Otro Modo:
					Escribir "...Operacion Inexistente..."
					
			Fin Segun
			
			Escribir "Deseas realizar otra operacion"
			leer salir_postres
			Limpiar Pantalla
			
		hasta Que salir_postres <> "s"
		
		postres_total = acum_fla + acum_tir + acum_hel
		
	Hasta Que  salir = "s"

        // Bueno nos encontramos llegando al final, en este sector nos encontraremos
	// ante proceso de reunir todos los calculos parciales que se realizaron anteriormente
	// para si ahora poder conseguir el monto final agregando algo como la suma de la propina 
	// de nuestro empleado en función.

	total_parcial = bebidas_total + pastas_total + postres_total
	propina = (total_parcial * 10) /100
	pago_total = total_parcial + propina
	
	Escribir "Ticket a Imprimir :"
	leer ticket

        // mediante este paso usando el Bucle Para realizamos la simulación de lacarga al número
	// de Ticket que recibirá nuestro cliente por todo lo consumido.
		
	Para j <- 1 Hasta ticket Con Paso 1 Hacer
		escribir "Ticket a Imprimir es :",j
		Limpiar Pantalla
	Fin Para
	
	
    Escribir "=======================================" 
	Escribir "***   Bodegon lo de Nando    *****"
	Escribir "***   Ticket Nro........",j " ***"
	Escribir ""
	Escribir "Mesa: ",i
	Escribir "Mozo: ",nombre 
	Escribir ""

        // El uso de los condicionales Si Entonces nos permitió poder agregar a nuetra  simulación 
	// de  impresión de ticket el ingreso de todos los pedidos consumidos por nuestro cliente lo
	// que genera la transparencia y da contro  de todo lo facturado.

	Si acum_agu <> 0 Entonces
		Escribir cant_agu ,".... Aguas ...... ",prec_agu , " $ c/u.... ",acum_agu "$"
	SiNo
		Escribir ""
	Finsi
	
	Si acum_gas <> 0 Entonces
		Escribir cant_gas, "....Gaseosas...... ",prec_gas," $ c/u.... ",acum_gas " $"
	SiNo
		Escribir ""
	Finsi
	
	Si acum_cer <> 0 Entonces
		Escribir cant_cer, "....Cervezas.......",prec_cer," $ c/u..... ",acum_cer " $"
	SiNo
		Escribir ""
	Finsi
		
	Si acum_tal <> 0 Entonces
		Escribir cant_tal, "....Tallarines.... ",prec_tal," $ c/u.... ",acum_tal " $"
	SiNo
		Escribir ""
	Finsi
	Si acum_rav <> 0 Entonces
		Escribir cant_rav, "....Ravioles....... ",prec_rav," $ c/u.... ",acum_rav " $"
	SiNo
		Escribir ""
	Finsi
	
	Si acum_can <> 0 Entonces
		Escribir cant_can, "....Canelones....... ",prec_can," $ c/u.... ",acum_can " $"
	SiNo
		Escribir ""
	Finsi
	
	Si acum_fla <> 0 Entonces
		Escribir cant_fla, ".... Flan ........... ",prec_fla, " $ c/u.... ", acum_fla " $"
	SiNo
		Escribir ""
	Finsi
	Si acum_tir <> 0 Entonces
		
		Escribir cant_tir, ".... Tiramisu .... ",prec_tir, " $ c/u.... ", acum_tir " $"
	SiNo
		Escribir ""
	Finsi
	Si acum_hel <> 0 Entonces
		
		Escribir cant_hel, ".... Flan .... ",prec_hel, " $ c/u.... ", acum_hel " $"
	SiNo
		Escribir ".........."
	FinSi
	
	Escribir ""
	Escribir "Total consumo: ",total_parcial
	Escribir ""
	Escribir "Propina (10%): ",propina
	Escribir ""
	Escribir "Total a Pagar :.................... ",pago_total, " $"
	Escribir ""
	Escribir "=======================================" 
	escribir""
	Escribir ""
	Escribir "Fin Programa"
	Escribir "Hernando Alcoba"
	Escribir "Comisión 17/21608"
	Escribir "Martina Macias"
	Escribir "V.4626"
	
FinAlgoritmo
