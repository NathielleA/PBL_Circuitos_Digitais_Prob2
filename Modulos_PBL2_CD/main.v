module main
	
	input status[1:0];
	input coordenadas_coluna [2:0];
	input clock;
	
	wire status_decodificado[3:0]; 
	wire coordenadas_coluna_decodificada[3:0];
	wire counter_output[1:0];
	wire mux_output[1:0];
	
	counter_2bit(.clk(clock), .X(counter_output));
	
	decod_status decod_status01(.X(status_decodificado), .A(coordenadas_status)); 
	
	decod_ataque_col decod_ataque_col01(.X(coordenadas_coluna), .A(coordenadas_coluna_decodificada));
	
	mux4x1(.S(counter_output), .A(), .B(), .X());