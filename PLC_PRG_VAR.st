PROGRAM PLC_PRG
VAR
    // Estados das máquinas
    E_Cla : INT := 0;      // Classificadora
    E_Usi : INT := 0;      // Usinagem
    E_Emp : INT := 0;      // Empacotamento
    E_Sup : INT := 0;      // Supervisora

    // Entradas gerais
    START : BOOL;
    STOP  : BOOL;
	EMER  : BOOL;

    // Sinais de emergência
    Emergencia1 : BOOL := FALSE;
    Emergencia2 : BOOL := FALSE;
    Emergencia3 : BOOL := FALSE;
    

    // Comandos da máquina supervisora
    Maquina1 : BOOL := FALSE;   // Liga classificadora
    Maquina2 : BOOL := FALSE;   // Liga usinagem
    Maquina3 : BOOL := FALSE;   // Liga empacotamento

    // Sensores
    SC  : BOOL := FALSE;    // Sensor capacitivo
	SI  : BOOL := FALSE;    // Sensor indutivo
    OP1 : BOOL := FALSE;    // Sensor óptico 1
    OP2 : BOOL := FALSE;    // Sensor óptico 2
    OP3 : BOOL := FALSE;    // Sensor óptico 3

    // Contadores
    contador_classificacao : INT := 0;
    contador_usinagem      : INT := 0;

    // Contadores da empacotadora
    plastico_counter : INT := 0;
    metal_counter    : INT := 0;
    itemPorCaixa     : INT := 3;   // EXEMPLO — ajuste conforme sua lógica

    // Variáveis lógicas da empacotadora
    metal    : BOOL;
	caixa    : BOOL;

    // Variáveis da usinagem
    Mov1_concluido     : BOOL := FALSE;   // Movimento 1 concluído
    Mov2_concluido     : BOOL := FALSE;   // Movimento 2 concluído
    Usinagem_concluido : BOOL := FALSE;
	
	// Atuadores
	Esteira1 	  : BOOL := FALSE;
	Esteira2 	  : BOOL := FALSE;
	Esteira3 	  : BOOL := FALSE;
	Esteira4      : BOOL := FALSE;
	Esteira_plas  : BOOL := FALSE;
	Esteira_metal : BOOL := FALSE;
	Pistao1  	  : BOOL := FALSE;
	
	// Timers
	Timer_sc  	  : TON := (PT := T#30S);
	Timer_op1 	  : TON := (PT := T#30S);
	Timer_op2     : TON := (PT := T#30S);
	Timer_op3     : TON := (PT := T#30S);
	Timer_balanca : TON := (PT := T#2S); 
	
END_VAR
