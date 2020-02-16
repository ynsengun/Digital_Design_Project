## Clock signal
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets execute_IBUF]

set_property PACKAGE_PIN W5 [get_ports clk_in]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in]

##Buttons
#set_property PACKAGE_PIN U18 [get_ports execute]						
	#set_property IOSTANDARD LVCMOS33 [get_ports execute]
set_property PACKAGE_PIN T18 [get_ports execute]						
	set_property IOSTANDARD LVCMOS33 [get_ports execute]
#set_property PACKAGE_PIN W19 [get_ports execute]						
	#set_property IOSTANDARD LVCMOS33 [get_ports execute]
#set_property PACKAGE_PIN T17 [get_ports btnR]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
set_property PACKAGE_PIN U17 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]
	



## Switches
set_property PACKAGE_PIN V17 [get_ports {add[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {add[0]}]
set_property PACKAGE_PIN V16 [get_ports {add[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {add[1]}]
set_property PACKAGE_PIN W16 [get_ports {add[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {add[2]}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
set_property PACKAGE_PIN U1 [get_ports {subt[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {subt[0]}]
set_property PACKAGE_PIN T1 [get_ports {subt[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {subt[1]}]
set_property PACKAGE_PIN R2 [get_ports {subt[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {subt[2]}]





## LEDs
set_property PACKAGE_PIN U16 [get_ports {state[0]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {state[0]}]
set_property PACKAGE_PIN E19 [get_ports {state[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {state[1]}]
set_property PACKAGE_PIN U19 [get_ports {passanger[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[0]}]
set_property PACKAGE_PIN V19 [get_ports {passanger[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[1]}]
set_property PACKAGE_PIN W18 [get_ports {passanger[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[2]}]
set_property PACKAGE_PIN U15 [get_ports {passanger[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[3]}]
set_property PACKAGE_PIN U14 [get_ports {passanger[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[4]}]
set_property PACKAGE_PIN V14 [get_ports {passanger[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[5]}]
set_property PACKAGE_PIN V13 [get_ports {passanger[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[6]}]
set_property PACKAGE_PIN V3 [get_ports {passanger[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[7]}]
set_property PACKAGE_PIN W3 [get_ports {passanger[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[8]}]
set_property PACKAGE_PIN U3 [get_ports {passanger[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[9]}]
set_property PACKAGE_PIN P3 [get_ports {passanger[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[10]}]
set_property PACKAGE_PIN N3 [get_ports {passanger[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {passanger[11]}]
#set_property PACKAGE_PIN P1 [get_ports {elevator[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {elevator[1]}]
#set_property PACKAGE_PIN L1 [get_ports {elevator[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {elevator[2]}]



##7 segment display
set_property PACKAGE_PIN W7 [get_ports {a}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a}]
set_property PACKAGE_PIN W6 [get_ports {b}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b}]
set_property PACKAGE_PIN U8 [get_ports {c}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {c}]
set_property PACKAGE_PIN V8 [get_ports {d}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {d}]
set_property PACKAGE_PIN U5 [get_ports {e}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {e}]
set_property PACKAGE_PIN V5 [get_ports {f}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {f}]
set_property PACKAGE_PIN U7 [get_ports {g}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {g}]

set_property PACKAGE_PIN V7 [get_ports dp]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]



#------------------------------------------------------------
#---------------------- Display Connector--------------------
#------------------------------------------------------------
set_property PACKAGE_PIN L17 [get_ports reset_out]
set_property IOSTANDARD LVCMOS33 [get_ports reset_out]

set_property PACKAGE_PIN M18 [get_ports OE]
set_property IOSTANDARD LVCMOS33 [get_ports OE]

set_property PACKAGE_PIN P18 [get_ports SH_CP]
set_property IOSTANDARD LVCMOS33 [get_ports SH_CP]

set_property PACKAGE_PIN N17 [get_ports ST_CP]
set_property IOSTANDARD LVCMOS33 [get_ports ST_CP]

set_property PACKAGE_PIN K17 [get_ports DS]
set_property IOSTANDARD LVCMOS33 [get_ports DS]

set_property PACKAGE_PIN A14 [get_ports {col_select[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[0]}]

set_property PACKAGE_PIN A16 [get_ports {col_select[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[1]}]

set_property PACKAGE_PIN B15 [get_ports {col_select[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[2]}]

set_property PACKAGE_PIN B16 [get_ports {col_select[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[3]}]

set_property PACKAGE_PIN A15 [get_ports {col_select[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[4]}]

set_property PACKAGE_PIN A17 [get_ports {col_select[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[5]}]

set_property PACKAGE_PIN C15 [get_ports {col_select[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[6]}]

set_property PACKAGE_PIN C16 [get_ports {col_select[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {col_select[7]}]
