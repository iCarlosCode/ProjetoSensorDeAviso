-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/26/2023 23:46:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProjetoSensorDeAviso IS
    PORT (
	clk : IN std_logic;
	unidades_7seg : OUT std_logic_vector(6 DOWNTO 0);
	dezenas_7seg : OUT std_logic_vector(6 DOWNTO 0);
	s_motor : OUT std_logic_vector(1 DOWNTO 0);
	simuld : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	TRIG_HC_SR04 : OUT std_logic;
	ECHO_HC_SR04 : IN std_logic
	);
END ProjetoSensorDeAviso;

-- Design Ports Information
-- unidades_7seg[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unidades_7seg[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dezenas_7seg[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_motor[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_motor[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRIG_HC_SR04	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simuld[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simuld[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simuld[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simuld[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ECHO_HC_SR04	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProjetoSensorDeAviso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_unidades_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dezenas_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_motor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_simuld : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TRIG_HC_SR04 : std_logic;
SIGNAL ww_ECHO_HC_SR04 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \unidades_7seg[0]~output_o\ : std_logic;
SIGNAL \unidades_7seg[1]~output_o\ : std_logic;
SIGNAL \unidades_7seg[2]~output_o\ : std_logic;
SIGNAL \unidades_7seg[3]~output_o\ : std_logic;
SIGNAL \unidades_7seg[4]~output_o\ : std_logic;
SIGNAL \unidades_7seg[5]~output_o\ : std_logic;
SIGNAL \unidades_7seg[6]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[0]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[1]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[2]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[3]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[4]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[5]~output_o\ : std_logic;
SIGNAL \dezenas_7seg[6]~output_o\ : std_logic;
SIGNAL \s_motor[0]~output_o\ : std_logic;
SIGNAL \s_motor[1]~output_o\ : std_logic;
SIGNAL \TRIG_HC_SR04~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ECHO_HC_SR04~input_o\ : std_logic;
SIGNAL \medidor1|eco_nsinc~q\ : std_logic;
SIGNAL \medidor1|eco_sinc~q\ : std_logic;
SIGNAL \medidor1|eco_pasado~feeder_combout\ : std_logic;
SIGNAL \medidor1|eco_pasado~q\ : std_logic;
SIGNAL \medidor1|Trigger~0_combout\ : std_logic;
SIGNAL \medidor1|centimetros_unid~8_combout\ : std_logic;
SIGNAL \medidor1|centimetros[0]~16_combout\ : std_logic;
SIGNAL \medidor1|centimetros[0]~17\ : std_logic;
SIGNAL \medidor1|centimetros[1]~18_combout\ : std_logic;
SIGNAL \medidor1|centimetros[1]~19\ : std_logic;
SIGNAL \medidor1|centimetros[2]~20_combout\ : std_logic;
SIGNAL \medidor1|centimetros[2]~21\ : std_logic;
SIGNAL \medidor1|centimetros[3]~22_combout\ : std_logic;
SIGNAL \medidor1|centimetros[3]~23\ : std_logic;
SIGNAL \medidor1|centimetros[4]~24_combout\ : std_logic;
SIGNAL \medidor1|centimetros[4]~25\ : std_logic;
SIGNAL \medidor1|centimetros[5]~26_combout\ : std_logic;
SIGNAL \medidor1|centimetros[5]~27\ : std_logic;
SIGNAL \medidor1|centimetros[6]~28_combout\ : std_logic;
SIGNAL \medidor1|centimetros[6]~29\ : std_logic;
SIGNAL \medidor1|centimetros[7]~30_combout\ : std_logic;
SIGNAL \medidor1|centimetros[7]~31\ : std_logic;
SIGNAL \medidor1|centimetros[8]~32_combout\ : std_logic;
SIGNAL \medidor1|centimetros[8]~33\ : std_logic;
SIGNAL \medidor1|centimetros[9]~34_combout\ : std_logic;
SIGNAL \medidor1|centimetros[9]~35\ : std_logic;
SIGNAL \medidor1|centimetros[10]~36_combout\ : std_logic;
SIGNAL \medidor1|centimetros[10]~37\ : std_logic;
SIGNAL \medidor1|centimetros[11]~38_combout\ : std_logic;
SIGNAL \medidor1|centimetros[11]~39\ : std_logic;
SIGNAL \medidor1|centimetros[12]~40_combout\ : std_logic;
SIGNAL \medidor1|centimetros[12]~41\ : std_logic;
SIGNAL \medidor1|centimetros[13]~42_combout\ : std_logic;
SIGNAL \medidor1|centimetros[13]~43\ : std_logic;
SIGNAL \medidor1|centimetros[14]~44_combout\ : std_logic;
SIGNAL \medidor1|centimetros[14]~45\ : std_logic;
SIGNAL \medidor1|centimetros[15]~46_combout\ : std_logic;
SIGNAL \medidor1|espera~1_combout\ : std_logic;
SIGNAL \medidor1|espera~4_combout\ : std_logic;
SIGNAL \medidor1|espera~5_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[3]~1_combout\ : std_logic;
SIGNAL \medidor1|cuenta[0]~17_combout\ : std_logic;
SIGNAL \medidor1|Equal0~4_combout\ : std_logic;
SIGNAL \medidor1|cuenta[5]~28\ : std_logic;
SIGNAL \medidor1|cuenta[6]~29_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[3]~0_combout\ : std_logic;
SIGNAL \medidor1|cuenta[6]~30\ : std_logic;
SIGNAL \medidor1|cuenta[7]~31_combout\ : std_logic;
SIGNAL \medidor1|cuenta[7]~32\ : std_logic;
SIGNAL \medidor1|cuenta[8]~34_combout\ : std_logic;
SIGNAL \medidor1|cuenta[8]~35\ : std_logic;
SIGNAL \medidor1|cuenta[9]~36_combout\ : std_logic;
SIGNAL \medidor1|cuenta[9]~37\ : std_logic;
SIGNAL \medidor1|cuenta[10]~38_combout\ : std_logic;
SIGNAL \medidor1|cuenta[10]~39\ : std_logic;
SIGNAL \medidor1|cuenta[11]~40_combout\ : std_logic;
SIGNAL \medidor1|Equal0~0_combout\ : std_logic;
SIGNAL \medidor1|cuenta[11]~41\ : std_logic;
SIGNAL \medidor1|cuenta[12]~42_combout\ : std_logic;
SIGNAL \medidor1|cuenta[12]~43\ : std_logic;
SIGNAL \medidor1|cuenta[13]~44_combout\ : std_logic;
SIGNAL \medidor1|cuenta[13]~45\ : std_logic;
SIGNAL \medidor1|cuenta[14]~46_combout\ : std_logic;
SIGNAL \medidor1|Equal0~2_combout\ : std_logic;
SIGNAL \medidor1|cuenta[14]~47\ : std_logic;
SIGNAL \medidor1|cuenta[15]~48_combout\ : std_logic;
SIGNAL \medidor1|cuenta[15]~49\ : std_logic;
SIGNAL \medidor1|cuenta[16]~50_combout\ : std_logic;
SIGNAL \medidor1|Equal0~1_combout\ : std_logic;
SIGNAL \medidor1|Equal0~3_combout\ : std_logic;
SIGNAL \medidor1|espera~0_combout\ : std_logic;
SIGNAL \medidor1|Equal1~0_combout\ : std_logic;
SIGNAL \medidor1|Equal1~2_combout\ : std_logic;
SIGNAL \medidor1|cuenta[1]~33_combout\ : std_logic;
SIGNAL \medidor1|cuenta[0]~18\ : std_logic;
SIGNAL \medidor1|cuenta[1]~19_combout\ : std_logic;
SIGNAL \medidor1|cuenta[1]~20\ : std_logic;
SIGNAL \medidor1|cuenta[2]~21_combout\ : std_logic;
SIGNAL \medidor1|cuenta[2]~22\ : std_logic;
SIGNAL \medidor1|cuenta[3]~23_combout\ : std_logic;
SIGNAL \medidor1|cuenta[3]~24\ : std_logic;
SIGNAL \medidor1|cuenta[4]~25_combout\ : std_logic;
SIGNAL \medidor1|cuenta[4]~26\ : std_logic;
SIGNAL \medidor1|cuenta[5]~27_combout\ : std_logic;
SIGNAL \medidor1|Equal1~1_combout\ : std_logic;
SIGNAL \medidor1|espera~6_combout\ : std_logic;
SIGNAL \medidor1|espera~2_combout\ : std_logic;
SIGNAL \medidor1|espera~3_combout\ : std_logic;
SIGNAL \medidor1|espera~7_combout\ : std_logic;
SIGNAL \medidor1|espera~8_combout\ : std_logic;
SIGNAL \medidor1|espera~q\ : std_logic;
SIGNAL \medidor1|centimetros_unid[3]~6_combout\ : std_logic;
SIGNAL \medidor1|centimetros_unid~7_combout\ : std_logic;
SIGNAL \medidor1|Add1~1_combout\ : std_logic;
SIGNAL \medidor1|centimetros_unid~10_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece[3]~4_combout\ : std_logic;
SIGNAL \medidor1|Add1~0_combout\ : std_logic;
SIGNAL \medidor1|centimetros_unid~9_combout\ : std_logic;
SIGNAL \medidor1|sal_unid[2]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[2]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sal_unid[0]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[0]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sal_unid[1]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[1]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sal_unid[3]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitounidad[3]~feeder_combout\ : std_logic;
SIGNAL \conversor1|Mux6~0_combout\ : std_logic;
SIGNAL \conversor1|Mux5~0_combout\ : std_logic;
SIGNAL \conversor1|Mux4~0_combout\ : std_logic;
SIGNAL \conversor1|Mux3~0_combout\ : std_logic;
SIGNAL \conversor1|Mux2~0_combout\ : std_logic;
SIGNAL \conversor1|Mux1~0_combout\ : std_logic;
SIGNAL \conversor1|Mux0~0_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece~5_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece[3]~6_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece~7_combout\ : std_logic;
SIGNAL \medidor1|Add0~0_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece~9_combout\ : std_logic;
SIGNAL \medidor1|sal_dece[2]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitodecena[2]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sal_dece[1]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitodecena[1]~feeder_combout\ : std_logic;
SIGNAL \medidor1|centimetros_dece~8_combout\ : std_logic;
SIGNAL \medidor1|sal_dece[3]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sal_dece[0]~feeder_combout\ : std_logic;
SIGNAL \medidor1|digitodecena[0]~feeder_combout\ : std_logic;
SIGNAL \conversor2|Mux6~0_combout\ : std_logic;
SIGNAL \conversor2|Mux5~0_combout\ : std_logic;
SIGNAL \conversor2|Mux4~0_combout\ : std_logic;
SIGNAL \conversor2|Mux3~0_combout\ : std_logic;
SIGNAL \conversor2|Mux2~0_combout\ : std_logic;
SIGNAL \conversor2|Mux1~0_combout\ : std_logic;
SIGNAL \conversor2|Mux0~0_combout\ : std_logic;
SIGNAL \simuld[0]~input_o\ : std_logic;
SIGNAL \simuld[3]~input_o\ : std_logic;
SIGNAL \simuld[1]~input_o\ : std_logic;
SIGNAL \simuld[2]~input_o\ : std_logic;
SIGNAL \maquina1|LessThan0~0_combout\ : std_logic;
SIGNAL \maquina1|Selector2~2_combout\ : std_logic;
SIGNAL \maquina1|Selector1~3_combout\ : std_logic;
SIGNAL \maquina1|Selector0~0_combout\ : std_logic;
SIGNAL \maquina1|Selector1~1_combout\ : std_logic;
SIGNAL \maquina1|Selector1~2_combout\ : std_logic;
SIGNAL \maquina1|Selector0~1_combout\ : std_logic;
SIGNAL \maquina1|estado.SEGURO~q\ : std_logic;
SIGNAL \maquina1|Selector1~0_combout\ : std_logic;
SIGNAL \maquina1|Selector1~4_combout\ : std_logic;
SIGNAL \maquina1|estado.CUIDADO~q\ : std_logic;
SIGNAL \maquina1|Selector2~3_combout\ : std_logic;
SIGNAL \maquina1|Selector2~4_combout\ : std_logic;
SIGNAL \maquina1|estado.PERIGO~q\ : std_logic;
SIGNAL \maquina1|saida_motor[0]~feeder_combout\ : std_logic;
SIGNAL \maquina1|saida_motor[1]~feeder_combout\ : std_logic;
SIGNAL \medidor1|sensor_disp~0_combout\ : std_logic;
SIGNAL \medidor1|sensor_disp~1_combout\ : std_logic;
SIGNAL \medidor1|sensor_disp~q\ : std_logic;
SIGNAL \medidor1|cuenta\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \medidor1|centimetros\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \medidor1|digitounidad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \medidor1|digitodecena\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \medidor1|sal_dece\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \maquina1|saida_motor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \medidor1|sal_unid\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \medidor1|centimetros_unid\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \medidor1|centimetros_dece\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \medidor1|ALT_INV_digitounidad[3]~0_combout\ : std_logic;
SIGNAL \conversor2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \conversor1|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
unidades_7seg <= ww_unidades_7seg;
dezenas_7seg <= ww_dezenas_7seg;
s_motor <= ww_s_motor;
ww_simuld <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(simuld);
TRIG_HC_SR04 <= ww_TRIG_HC_SR04;
ww_ECHO_HC_SR04 <= ECHO_HC_SR04;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\medidor1|ALT_INV_digitounidad[3]~0_combout\ <= NOT \medidor1|digitounidad[3]~0_combout\;
\conversor2|ALT_INV_Mux0~0_combout\ <= NOT \conversor2|Mux0~0_combout\;
\conversor1|ALT_INV_Mux0~0_combout\ <= NOT \conversor1|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\unidades_7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\unidades_7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\unidades_7seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\unidades_7seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\unidades_7seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\unidades_7seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\unidades_7seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \unidades_7seg[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\dezenas_7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\dezenas_7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\dezenas_7seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\dezenas_7seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\dezenas_7seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\dezenas_7seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\dezenas_7seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \conversor2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dezenas_7seg[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\s_motor[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina1|saida_motor\(0),
	devoe => ww_devoe,
	o => \s_motor[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\s_motor[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina1|saida_motor\(1),
	devoe => ww_devoe,
	o => \s_motor[1]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\TRIG_HC_SR04~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \medidor1|sensor_disp~q\,
	devoe => ww_devoe,
	o => \TRIG_HC_SR04~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X65_Y0_N15
\ECHO_HC_SR04~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ECHO_HC_SR04,
	o => \ECHO_HC_SR04~input_o\);

-- Location: FF_X114_Y26_N5
\medidor1|eco_nsinc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ECHO_HC_SR04~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|eco_nsinc~q\);

-- Location: FF_X114_Y26_N31
\medidor1|eco_sinc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \medidor1|eco_nsinc~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|eco_sinc~q\);

-- Location: LCCOMB_X114_Y26_N16
\medidor1|eco_pasado~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|eco_pasado~feeder_combout\ = \medidor1|eco_sinc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|eco_sinc~q\,
	combout => \medidor1|eco_pasado~feeder_combout\);

-- Location: FF_X114_Y26_N17
\medidor1|eco_pasado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|eco_pasado~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|eco_pasado~q\);

-- Location: LCCOMB_X114_Y26_N24
\medidor1|Trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Trigger~0_combout\ = (\medidor1|eco_sinc~q\ & !\medidor1|eco_pasado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|eco_sinc~q\,
	datad => \medidor1|eco_pasado~q\,
	combout => \medidor1|Trigger~0_combout\);

-- Location: LCCOMB_X114_Y26_N28
\medidor1|centimetros_unid~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_unid~8_combout\ = (!\medidor1|centimetros_unid\(0) & (!\medidor1|centimetros_dece[3]~4_combout\ & ((\medidor1|eco_pasado~q\) # (!\medidor1|eco_sinc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|eco_sinc~q\,
	datab => \medidor1|eco_pasado~q\,
	datac => \medidor1|centimetros_unid\(0),
	datad => \medidor1|centimetros_dece[3]~4_combout\,
	combout => \medidor1|centimetros_unid~8_combout\);

-- Location: LCCOMB_X112_Y26_N0
\medidor1|centimetros[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[0]~16_combout\ = \medidor1|centimetros\(0) $ (VCC)
-- \medidor1|centimetros[0]~17\ = CARRY(\medidor1|centimetros\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(0),
	datad => VCC,
	combout => \medidor1|centimetros[0]~16_combout\,
	cout => \medidor1|centimetros[0]~17\);

-- Location: FF_X112_Y26_N1
\medidor1|centimetros[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[0]~16_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(0));

-- Location: LCCOMB_X112_Y26_N2
\medidor1|centimetros[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[1]~18_combout\ = (\medidor1|centimetros\(1) & (!\medidor1|centimetros[0]~17\)) # (!\medidor1|centimetros\(1) & ((\medidor1|centimetros[0]~17\) # (GND)))
-- \medidor1|centimetros[1]~19\ = CARRY((!\medidor1|centimetros[0]~17\) # (!\medidor1|centimetros\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(1),
	datad => VCC,
	cin => \medidor1|centimetros[0]~17\,
	combout => \medidor1|centimetros[1]~18_combout\,
	cout => \medidor1|centimetros[1]~19\);

-- Location: FF_X112_Y26_N3
\medidor1|centimetros[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[1]~18_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(1));

-- Location: LCCOMB_X112_Y26_N4
\medidor1|centimetros[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[2]~20_combout\ = (\medidor1|centimetros\(2) & (\medidor1|centimetros[1]~19\ $ (GND))) # (!\medidor1|centimetros\(2) & (!\medidor1|centimetros[1]~19\ & VCC))
-- \medidor1|centimetros[2]~21\ = CARRY((\medidor1|centimetros\(2) & !\medidor1|centimetros[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(2),
	datad => VCC,
	cin => \medidor1|centimetros[1]~19\,
	combout => \medidor1|centimetros[2]~20_combout\,
	cout => \medidor1|centimetros[2]~21\);

-- Location: FF_X112_Y26_N5
\medidor1|centimetros[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[2]~20_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(2));

-- Location: LCCOMB_X112_Y26_N6
\medidor1|centimetros[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[3]~22_combout\ = (\medidor1|centimetros\(3) & (!\medidor1|centimetros[2]~21\)) # (!\medidor1|centimetros\(3) & ((\medidor1|centimetros[2]~21\) # (GND)))
-- \medidor1|centimetros[3]~23\ = CARRY((!\medidor1|centimetros[2]~21\) # (!\medidor1|centimetros\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(3),
	datad => VCC,
	cin => \medidor1|centimetros[2]~21\,
	combout => \medidor1|centimetros[3]~22_combout\,
	cout => \medidor1|centimetros[3]~23\);

-- Location: FF_X112_Y26_N7
\medidor1|centimetros[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[3]~22_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(3));

-- Location: LCCOMB_X112_Y26_N8
\medidor1|centimetros[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[4]~24_combout\ = (\medidor1|centimetros\(4) & (\medidor1|centimetros[3]~23\ $ (GND))) # (!\medidor1|centimetros\(4) & (!\medidor1|centimetros[3]~23\ & VCC))
-- \medidor1|centimetros[4]~25\ = CARRY((\medidor1|centimetros\(4) & !\medidor1|centimetros[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(4),
	datad => VCC,
	cin => \medidor1|centimetros[3]~23\,
	combout => \medidor1|centimetros[4]~24_combout\,
	cout => \medidor1|centimetros[4]~25\);

-- Location: FF_X112_Y26_N9
\medidor1|centimetros[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[4]~24_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(4));

-- Location: LCCOMB_X112_Y26_N10
\medidor1|centimetros[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[5]~26_combout\ = (\medidor1|centimetros\(5) & (!\medidor1|centimetros[4]~25\)) # (!\medidor1|centimetros\(5) & ((\medidor1|centimetros[4]~25\) # (GND)))
-- \medidor1|centimetros[5]~27\ = CARRY((!\medidor1|centimetros[4]~25\) # (!\medidor1|centimetros\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(5),
	datad => VCC,
	cin => \medidor1|centimetros[4]~25\,
	combout => \medidor1|centimetros[5]~26_combout\,
	cout => \medidor1|centimetros[5]~27\);

-- Location: FF_X112_Y26_N11
\medidor1|centimetros[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[5]~26_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(5));

-- Location: LCCOMB_X112_Y26_N12
\medidor1|centimetros[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[6]~28_combout\ = (\medidor1|centimetros\(6) & (\medidor1|centimetros[5]~27\ $ (GND))) # (!\medidor1|centimetros\(6) & (!\medidor1|centimetros[5]~27\ & VCC))
-- \medidor1|centimetros[6]~29\ = CARRY((\medidor1|centimetros\(6) & !\medidor1|centimetros[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(6),
	datad => VCC,
	cin => \medidor1|centimetros[5]~27\,
	combout => \medidor1|centimetros[6]~28_combout\,
	cout => \medidor1|centimetros[6]~29\);

-- Location: FF_X112_Y26_N13
\medidor1|centimetros[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[6]~28_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(6));

-- Location: LCCOMB_X112_Y26_N14
\medidor1|centimetros[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[7]~30_combout\ = (\medidor1|centimetros\(7) & (!\medidor1|centimetros[6]~29\)) # (!\medidor1|centimetros\(7) & ((\medidor1|centimetros[6]~29\) # (GND)))
-- \medidor1|centimetros[7]~31\ = CARRY((!\medidor1|centimetros[6]~29\) # (!\medidor1|centimetros\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(7),
	datad => VCC,
	cin => \medidor1|centimetros[6]~29\,
	combout => \medidor1|centimetros[7]~30_combout\,
	cout => \medidor1|centimetros[7]~31\);

-- Location: FF_X112_Y26_N15
\medidor1|centimetros[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[7]~30_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(7));

-- Location: LCCOMB_X112_Y26_N16
\medidor1|centimetros[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[8]~32_combout\ = (\medidor1|centimetros\(8) & (\medidor1|centimetros[7]~31\ $ (GND))) # (!\medidor1|centimetros\(8) & (!\medidor1|centimetros[7]~31\ & VCC))
-- \medidor1|centimetros[8]~33\ = CARRY((\medidor1|centimetros\(8) & !\medidor1|centimetros[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(8),
	datad => VCC,
	cin => \medidor1|centimetros[7]~31\,
	combout => \medidor1|centimetros[8]~32_combout\,
	cout => \medidor1|centimetros[8]~33\);

-- Location: FF_X112_Y26_N17
\medidor1|centimetros[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[8]~32_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(8));

-- Location: LCCOMB_X112_Y26_N18
\medidor1|centimetros[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[9]~34_combout\ = (\medidor1|centimetros\(9) & (!\medidor1|centimetros[8]~33\)) # (!\medidor1|centimetros\(9) & ((\medidor1|centimetros[8]~33\) # (GND)))
-- \medidor1|centimetros[9]~35\ = CARRY((!\medidor1|centimetros[8]~33\) # (!\medidor1|centimetros\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(9),
	datad => VCC,
	cin => \medidor1|centimetros[8]~33\,
	combout => \medidor1|centimetros[9]~34_combout\,
	cout => \medidor1|centimetros[9]~35\);

-- Location: FF_X112_Y26_N19
\medidor1|centimetros[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[9]~34_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(9));

-- Location: LCCOMB_X112_Y26_N20
\medidor1|centimetros[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[10]~36_combout\ = (\medidor1|centimetros\(10) & (\medidor1|centimetros[9]~35\ $ (GND))) # (!\medidor1|centimetros\(10) & (!\medidor1|centimetros[9]~35\ & VCC))
-- \medidor1|centimetros[10]~37\ = CARRY((\medidor1|centimetros\(10) & !\medidor1|centimetros[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(10),
	datad => VCC,
	cin => \medidor1|centimetros[9]~35\,
	combout => \medidor1|centimetros[10]~36_combout\,
	cout => \medidor1|centimetros[10]~37\);

-- Location: FF_X112_Y26_N21
\medidor1|centimetros[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[10]~36_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(10));

-- Location: LCCOMB_X112_Y26_N22
\medidor1|centimetros[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[11]~38_combout\ = (\medidor1|centimetros\(11) & (!\medidor1|centimetros[10]~37\)) # (!\medidor1|centimetros\(11) & ((\medidor1|centimetros[10]~37\) # (GND)))
-- \medidor1|centimetros[11]~39\ = CARRY((!\medidor1|centimetros[10]~37\) # (!\medidor1|centimetros\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(11),
	datad => VCC,
	cin => \medidor1|centimetros[10]~37\,
	combout => \medidor1|centimetros[11]~38_combout\,
	cout => \medidor1|centimetros[11]~39\);

-- Location: FF_X112_Y26_N23
\medidor1|centimetros[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[11]~38_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(11));

-- Location: LCCOMB_X112_Y26_N24
\medidor1|centimetros[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[12]~40_combout\ = (\medidor1|centimetros\(12) & (\medidor1|centimetros[11]~39\ $ (GND))) # (!\medidor1|centimetros\(12) & (!\medidor1|centimetros[11]~39\ & VCC))
-- \medidor1|centimetros[12]~41\ = CARRY((\medidor1|centimetros\(12) & !\medidor1|centimetros[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(12),
	datad => VCC,
	cin => \medidor1|centimetros[11]~39\,
	combout => \medidor1|centimetros[12]~40_combout\,
	cout => \medidor1|centimetros[12]~41\);

-- Location: FF_X112_Y26_N25
\medidor1|centimetros[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[12]~40_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(12));

-- Location: LCCOMB_X112_Y26_N26
\medidor1|centimetros[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[13]~42_combout\ = (\medidor1|centimetros\(13) & (!\medidor1|centimetros[12]~41\)) # (!\medidor1|centimetros\(13) & ((\medidor1|centimetros[12]~41\) # (GND)))
-- \medidor1|centimetros[13]~43\ = CARRY((!\medidor1|centimetros[12]~41\) # (!\medidor1|centimetros\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(13),
	datad => VCC,
	cin => \medidor1|centimetros[12]~41\,
	combout => \medidor1|centimetros[13]~42_combout\,
	cout => \medidor1|centimetros[13]~43\);

-- Location: FF_X112_Y26_N27
\medidor1|centimetros[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[13]~42_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(13));

-- Location: LCCOMB_X112_Y26_N28
\medidor1|centimetros[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[14]~44_combout\ = (\medidor1|centimetros\(14) & (\medidor1|centimetros[13]~43\ $ (GND))) # (!\medidor1|centimetros\(14) & (!\medidor1|centimetros[13]~43\ & VCC))
-- \medidor1|centimetros[14]~45\ = CARRY((\medidor1|centimetros\(14) & !\medidor1|centimetros[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|centimetros\(14),
	datad => VCC,
	cin => \medidor1|centimetros[13]~43\,
	combout => \medidor1|centimetros[14]~44_combout\,
	cout => \medidor1|centimetros[14]~45\);

-- Location: FF_X112_Y26_N29
\medidor1|centimetros[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[14]~44_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(14));

-- Location: LCCOMB_X112_Y26_N30
\medidor1|centimetros[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros[15]~46_combout\ = \medidor1|centimetros\(15) $ (\medidor1|centimetros[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(15),
	cin => \medidor1|centimetros[14]~45\,
	combout => \medidor1|centimetros[15]~46_combout\);

-- Location: FF_X112_Y26_N31
\medidor1|centimetros[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros[15]~46_combout\,
	sclr => \medidor1|Trigger~0_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros\(15));

-- Location: LCCOMB_X111_Y26_N16
\medidor1|espera~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~1_combout\ = (\medidor1|centimetros\(15)) # (\medidor1|centimetros\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|centimetros\(15),
	datad => \medidor1|centimetros\(14),
	combout => \medidor1|espera~1_combout\);

-- Location: LCCOMB_X114_Y26_N20
\medidor1|espera~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~4_combout\ = (\medidor1|centimetros\(9)) # (((\medidor1|centimetros\(7)) # (!\medidor1|centimetros\(6))) # (!\medidor1|centimetros\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(9),
	datab => \medidor1|centimetros\(8),
	datac => \medidor1|centimetros\(7),
	datad => \medidor1|centimetros\(6),
	combout => \medidor1|espera~4_combout\);

-- Location: LCCOMB_X111_Y26_N30
\medidor1|espera~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~5_combout\ = (\medidor1|centimetros\(12)) # (((\medidor1|centimetros\(13)) # (!\medidor1|centimetros\(10))) # (!\medidor1|centimetros\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(12),
	datab => \medidor1|centimetros\(11),
	datac => \medidor1|centimetros\(10),
	datad => \medidor1|centimetros\(13),
	combout => \medidor1|espera~5_combout\);

-- Location: LCCOMB_X114_Y26_N12
\medidor1|digitounidad[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[3]~1_combout\ = (!\medidor1|eco_sinc~q\ & \medidor1|eco_pasado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|eco_sinc~q\,
	datad => \medidor1|eco_pasado~q\,
	combout => \medidor1|digitounidad[3]~1_combout\);

-- Location: LCCOMB_X113_Y26_N16
\medidor1|cuenta[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[0]~17_combout\ = \medidor1|cuenta\(0) $ (VCC)
-- \medidor1|cuenta[0]~18\ = CARRY(\medidor1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(0),
	datad => VCC,
	combout => \medidor1|cuenta[0]~17_combout\,
	cout => \medidor1|cuenta[0]~18\);

-- Location: LCCOMB_X113_Y26_N10
\medidor1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal0~4_combout\ = (\medidor1|cuenta\(2) & (!\medidor1|cuenta\(1) & (\medidor1|cuenta\(5) & !\medidor1|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(2),
	datab => \medidor1|cuenta\(1),
	datac => \medidor1|cuenta\(5),
	datad => \medidor1|cuenta\(0),
	combout => \medidor1|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y26_N26
\medidor1|cuenta[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[5]~27_combout\ = (\medidor1|cuenta\(5) & (!\medidor1|cuenta[4]~26\)) # (!\medidor1|cuenta\(5) & ((\medidor1|cuenta[4]~26\) # (GND)))
-- \medidor1|cuenta[5]~28\ = CARRY((!\medidor1|cuenta[4]~26\) # (!\medidor1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(5),
	datad => VCC,
	cin => \medidor1|cuenta[4]~26\,
	combout => \medidor1|cuenta[5]~27_combout\,
	cout => \medidor1|cuenta[5]~28\);

-- Location: LCCOMB_X113_Y26_N28
\medidor1|cuenta[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[6]~29_combout\ = (\medidor1|cuenta\(6) & (\medidor1|cuenta[5]~28\ $ (GND))) # (!\medidor1|cuenta\(6) & (!\medidor1|cuenta[5]~28\ & VCC))
-- \medidor1|cuenta[6]~30\ = CARRY((\medidor1|cuenta\(6) & !\medidor1|cuenta[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(6),
	datad => VCC,
	cin => \medidor1|cuenta[5]~28\,
	combout => \medidor1|cuenta[6]~29_combout\,
	cout => \medidor1|cuenta[6]~30\);

-- Location: LCCOMB_X114_Y26_N4
\medidor1|digitounidad[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[3]~0_combout\ = (!\medidor1|eco_sinc~q\ & (\medidor1|eco_pasado~q\ & \medidor1|espera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|eco_sinc~q\,
	datab => \medidor1|eco_pasado~q\,
	datad => \medidor1|espera~q\,
	combout => \medidor1|digitounidad[3]~0_combout\);

-- Location: FF_X113_Y26_N29
\medidor1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[6]~29_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(6));

-- Location: LCCOMB_X113_Y26_N30
\medidor1|cuenta[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[7]~31_combout\ = (\medidor1|cuenta\(7) & (!\medidor1|cuenta[6]~30\)) # (!\medidor1|cuenta\(7) & ((\medidor1|cuenta[6]~30\) # (GND)))
-- \medidor1|cuenta[7]~32\ = CARRY((!\medidor1|cuenta[6]~30\) # (!\medidor1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(7),
	datad => VCC,
	cin => \medidor1|cuenta[6]~30\,
	combout => \medidor1|cuenta[7]~31_combout\,
	cout => \medidor1|cuenta[7]~32\);

-- Location: FF_X113_Y26_N31
\medidor1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[7]~31_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(7));

-- Location: LCCOMB_X113_Y25_N0
\medidor1|cuenta[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[8]~34_combout\ = (\medidor1|cuenta\(8) & (\medidor1|cuenta[7]~32\ $ (GND))) # (!\medidor1|cuenta\(8) & (!\medidor1|cuenta[7]~32\ & VCC))
-- \medidor1|cuenta[8]~35\ = CARRY((\medidor1|cuenta\(8) & !\medidor1|cuenta[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(8),
	datad => VCC,
	cin => \medidor1|cuenta[7]~32\,
	combout => \medidor1|cuenta[8]~34_combout\,
	cout => \medidor1|cuenta[8]~35\);

-- Location: FF_X113_Y25_N1
\medidor1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[8]~34_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(8));

-- Location: LCCOMB_X113_Y25_N2
\medidor1|cuenta[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[9]~36_combout\ = (\medidor1|cuenta\(9) & (!\medidor1|cuenta[8]~35\)) # (!\medidor1|cuenta\(9) & ((\medidor1|cuenta[8]~35\) # (GND)))
-- \medidor1|cuenta[9]~37\ = CARRY((!\medidor1|cuenta[8]~35\) # (!\medidor1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(9),
	datad => VCC,
	cin => \medidor1|cuenta[8]~35\,
	combout => \medidor1|cuenta[9]~36_combout\,
	cout => \medidor1|cuenta[9]~37\);

-- Location: FF_X113_Y25_N3
\medidor1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[9]~36_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(9));

-- Location: LCCOMB_X113_Y25_N4
\medidor1|cuenta[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[10]~38_combout\ = (\medidor1|cuenta\(10) & (\medidor1|cuenta[9]~37\ $ (GND))) # (!\medidor1|cuenta\(10) & (!\medidor1|cuenta[9]~37\ & VCC))
-- \medidor1|cuenta[10]~39\ = CARRY((\medidor1|cuenta\(10) & !\medidor1|cuenta[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(10),
	datad => VCC,
	cin => \medidor1|cuenta[9]~37\,
	combout => \medidor1|cuenta[10]~38_combout\,
	cout => \medidor1|cuenta[10]~39\);

-- Location: FF_X113_Y25_N5
\medidor1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[10]~38_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(10));

-- Location: LCCOMB_X113_Y25_N6
\medidor1|cuenta[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[11]~40_combout\ = (\medidor1|cuenta\(11) & (!\medidor1|cuenta[10]~39\)) # (!\medidor1|cuenta\(11) & ((\medidor1|cuenta[10]~39\) # (GND)))
-- \medidor1|cuenta[11]~41\ = CARRY((!\medidor1|cuenta[10]~39\) # (!\medidor1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(11),
	datad => VCC,
	cin => \medidor1|cuenta[10]~39\,
	combout => \medidor1|cuenta[11]~40_combout\,
	cout => \medidor1|cuenta[11]~41\);

-- Location: FF_X113_Y25_N7
\medidor1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[11]~40_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(11));

-- Location: LCCOMB_X113_Y26_N0
\medidor1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal0~0_combout\ = (\medidor1|cuenta\(7) & (!\medidor1|cuenta\(11) & !\medidor1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(7),
	datac => \medidor1|cuenta\(11),
	datad => \medidor1|cuenta\(9),
	combout => \medidor1|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y25_N8
\medidor1|cuenta[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[12]~42_combout\ = (\medidor1|cuenta\(12) & (\medidor1|cuenta[11]~41\ $ (GND))) # (!\medidor1|cuenta\(12) & (!\medidor1|cuenta[11]~41\ & VCC))
-- \medidor1|cuenta[12]~43\ = CARRY((\medidor1|cuenta\(12) & !\medidor1|cuenta[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(12),
	datad => VCC,
	cin => \medidor1|cuenta[11]~41\,
	combout => \medidor1|cuenta[12]~42_combout\,
	cout => \medidor1|cuenta[12]~43\);

-- Location: FF_X113_Y25_N9
\medidor1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[12]~42_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(12));

-- Location: LCCOMB_X113_Y25_N10
\medidor1|cuenta[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[13]~44_combout\ = (\medidor1|cuenta\(13) & (!\medidor1|cuenta[12]~43\)) # (!\medidor1|cuenta\(13) & ((\medidor1|cuenta[12]~43\) # (GND)))
-- \medidor1|cuenta[13]~45\ = CARRY((!\medidor1|cuenta[12]~43\) # (!\medidor1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(13),
	datad => VCC,
	cin => \medidor1|cuenta[12]~43\,
	combout => \medidor1|cuenta[13]~44_combout\,
	cout => \medidor1|cuenta[13]~45\);

-- Location: FF_X113_Y25_N11
\medidor1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[13]~44_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(13));

-- Location: LCCOMB_X113_Y25_N12
\medidor1|cuenta[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[14]~46_combout\ = (\medidor1|cuenta\(14) & (\medidor1|cuenta[13]~45\ $ (GND))) # (!\medidor1|cuenta\(14) & (!\medidor1|cuenta[13]~45\ & VCC))
-- \medidor1|cuenta[14]~47\ = CARRY((\medidor1|cuenta\(14) & !\medidor1|cuenta[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(14),
	datad => VCC,
	cin => \medidor1|cuenta[13]~45\,
	combout => \medidor1|cuenta[14]~46_combout\,
	cout => \medidor1|cuenta[14]~47\);

-- Location: FF_X113_Y25_N13
\medidor1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[14]~46_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(14));

-- Location: LCCOMB_X113_Y25_N30
\medidor1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal0~2_combout\ = (!\medidor1|cuenta\(14) & (!\medidor1|cuenta\(10) & (!\medidor1|cuenta\(12) & !\medidor1|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(14),
	datab => \medidor1|cuenta\(10),
	datac => \medidor1|cuenta\(12),
	datad => \medidor1|cuenta\(13),
	combout => \medidor1|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y25_N14
\medidor1|cuenta[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[15]~48_combout\ = (\medidor1|cuenta\(15) & (!\medidor1|cuenta[14]~47\)) # (!\medidor1|cuenta\(15) & ((\medidor1|cuenta[14]~47\) # (GND)))
-- \medidor1|cuenta[15]~49\ = CARRY((!\medidor1|cuenta[14]~47\) # (!\medidor1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(15),
	datad => VCC,
	cin => \medidor1|cuenta[14]~47\,
	combout => \medidor1|cuenta[15]~48_combout\,
	cout => \medidor1|cuenta[15]~49\);

-- Location: FF_X113_Y25_N15
\medidor1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[15]~48_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(15));

-- Location: LCCOMB_X113_Y25_N16
\medidor1|cuenta[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[16]~50_combout\ = \medidor1|cuenta[15]~49\ $ (!\medidor1|cuenta\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|cuenta\(16),
	cin => \medidor1|cuenta[15]~49\,
	combout => \medidor1|cuenta[16]~50_combout\);

-- Location: FF_X113_Y25_N17
\medidor1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[16]~50_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(16));

-- Location: LCCOMB_X113_Y25_N20
\medidor1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal0~1_combout\ = (\medidor1|cuenta\(6) & (\medidor1|cuenta\(8) & (\medidor1|cuenta\(4) & !\medidor1|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(6),
	datab => \medidor1|cuenta\(8),
	datac => \medidor1|cuenta\(4),
	datad => \medidor1|cuenta\(3),
	combout => \medidor1|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y25_N24
\medidor1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal0~3_combout\ = (\medidor1|Equal0~2_combout\ & (!\medidor1|cuenta\(16) & (!\medidor1|cuenta\(15) & \medidor1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Equal0~2_combout\,
	datab => \medidor1|cuenta\(16),
	datac => \medidor1|cuenta\(15),
	datad => \medidor1|Equal0~1_combout\,
	combout => \medidor1|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y26_N4
\medidor1|espera~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~0_combout\ = (\medidor1|Equal0~4_combout\ & (\medidor1|Equal0~0_combout\ & (!\medidor1|espera~q\ & \medidor1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Equal0~4_combout\,
	datab => \medidor1|Equal0~0_combout\,
	datac => \medidor1|espera~q\,
	datad => \medidor1|Equal0~3_combout\,
	combout => \medidor1|espera~0_combout\);

-- Location: LCCOMB_X113_Y26_N14
\medidor1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal1~0_combout\ = (!\medidor1|cuenta\(7) & (\medidor1|cuenta\(11) & \medidor1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(7),
	datac => \medidor1|cuenta\(11),
	datad => \medidor1|cuenta\(9),
	combout => \medidor1|Equal1~0_combout\);

-- Location: LCCOMB_X113_Y26_N2
\medidor1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal1~2_combout\ = (\medidor1|Equal1~1_combout\ & (\medidor1|Equal1~0_combout\ & \medidor1|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Equal1~1_combout\,
	datac => \medidor1|Equal1~0_combout\,
	datad => \medidor1|Equal0~3_combout\,
	combout => \medidor1|Equal1~2_combout\);

-- Location: LCCOMB_X113_Y26_N8
\medidor1|cuenta[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[1]~33_combout\ = (\medidor1|espera~0_combout\) # ((\medidor1|espera~q\ & ((\medidor1|Trigger~0_combout\) # (\medidor1|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|espera~q\,
	datab => \medidor1|Trigger~0_combout\,
	datac => \medidor1|espera~0_combout\,
	datad => \medidor1|Equal1~2_combout\,
	combout => \medidor1|cuenta[1]~33_combout\);

-- Location: FF_X113_Y26_N17
\medidor1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[0]~17_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(0));

-- Location: LCCOMB_X113_Y26_N18
\medidor1|cuenta[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[1]~19_combout\ = (\medidor1|cuenta\(1) & (!\medidor1|cuenta[0]~18\)) # (!\medidor1|cuenta\(1) & ((\medidor1|cuenta[0]~18\) # (GND)))
-- \medidor1|cuenta[1]~20\ = CARRY((!\medidor1|cuenta[0]~18\) # (!\medidor1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|cuenta\(1),
	datad => VCC,
	cin => \medidor1|cuenta[0]~18\,
	combout => \medidor1|cuenta[1]~19_combout\,
	cout => \medidor1|cuenta[1]~20\);

-- Location: FF_X113_Y26_N19
\medidor1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[1]~19_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(1));

-- Location: LCCOMB_X113_Y26_N20
\medidor1|cuenta[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[2]~21_combout\ = (\medidor1|cuenta\(2) & (\medidor1|cuenta[1]~20\ $ (GND))) # (!\medidor1|cuenta\(2) & (!\medidor1|cuenta[1]~20\ & VCC))
-- \medidor1|cuenta[2]~22\ = CARRY((\medidor1|cuenta\(2) & !\medidor1|cuenta[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(2),
	datad => VCC,
	cin => \medidor1|cuenta[1]~20\,
	combout => \medidor1|cuenta[2]~21_combout\,
	cout => \medidor1|cuenta[2]~22\);

-- Location: FF_X113_Y26_N21
\medidor1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[2]~21_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(2));

-- Location: LCCOMB_X113_Y26_N22
\medidor1|cuenta[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[3]~23_combout\ = (\medidor1|cuenta\(3) & (!\medidor1|cuenta[2]~22\)) # (!\medidor1|cuenta\(3) & ((\medidor1|cuenta[2]~22\) # (GND)))
-- \medidor1|cuenta[3]~24\ = CARRY((!\medidor1|cuenta[2]~22\) # (!\medidor1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(3),
	datad => VCC,
	cin => \medidor1|cuenta[2]~22\,
	combout => \medidor1|cuenta[3]~23_combout\,
	cout => \medidor1|cuenta[3]~24\);

-- Location: FF_X113_Y26_N23
\medidor1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[3]~23_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(3));

-- Location: LCCOMB_X113_Y26_N24
\medidor1|cuenta[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|cuenta[4]~25_combout\ = (\medidor1|cuenta\(4) & (\medidor1|cuenta[3]~24\ $ (GND))) # (!\medidor1|cuenta\(4) & (!\medidor1|cuenta[3]~24\ & VCC))
-- \medidor1|cuenta[4]~26\ = CARRY((\medidor1|cuenta\(4) & !\medidor1|cuenta[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(4),
	datad => VCC,
	cin => \medidor1|cuenta[3]~24\,
	combout => \medidor1|cuenta[4]~25_combout\,
	cout => \medidor1|cuenta[4]~26\);

-- Location: FF_X113_Y26_N25
\medidor1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[4]~25_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(4));

-- Location: FF_X113_Y26_N27
\medidor1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|cuenta[5]~27_combout\,
	sclr => \medidor1|cuenta[1]~33_combout\,
	ena => \medidor1|ALT_INV_digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|cuenta\(5));

-- Location: LCCOMB_X113_Y26_N12
\medidor1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Equal1~1_combout\ = (!\medidor1|cuenta\(5) & (\medidor1|cuenta\(1) & (!\medidor1|cuenta\(2) & \medidor1|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|cuenta\(5),
	datab => \medidor1|cuenta\(1),
	datac => \medidor1|cuenta\(2),
	datad => \medidor1|cuenta\(0),
	combout => \medidor1|Equal1~1_combout\);

-- Location: LCCOMB_X113_Y25_N22
\medidor1|espera~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~6_combout\ = (!\medidor1|digitounidad[3]~1_combout\ & (\medidor1|Equal1~1_combout\ & (\medidor1|Equal1~0_combout\ & \medidor1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad[3]~1_combout\,
	datab => \medidor1|Equal1~1_combout\,
	datac => \medidor1|Equal1~0_combout\,
	datad => \medidor1|Equal0~3_combout\,
	combout => \medidor1|espera~6_combout\);

-- Location: LCCOMB_X114_Y26_N22
\medidor1|espera~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~2_combout\ = ((\medidor1|centimetros\(2)) # ((!\medidor1|centimetros\(5)) # (!\medidor1|centimetros\(4)))) # (!\medidor1|centimetros\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(3),
	datab => \medidor1|centimetros\(2),
	datac => \medidor1|centimetros\(4),
	datad => \medidor1|centimetros\(5),
	combout => \medidor1|espera~2_combout\);

-- Location: LCCOMB_X114_Y26_N18
\medidor1|espera~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~3_combout\ = (\medidor1|centimetros\(0)) # ((\medidor1|Trigger~0_combout\) # ((\medidor1|espera~2_combout\) # (\medidor1|centimetros\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros\(0),
	datab => \medidor1|Trigger~0_combout\,
	datac => \medidor1|espera~2_combout\,
	datad => \medidor1|centimetros\(1),
	combout => \medidor1|espera~3_combout\);

-- Location: LCCOMB_X113_Y25_N28
\medidor1|espera~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~7_combout\ = (\medidor1|espera~4_combout\) # ((\medidor1|espera~5_combout\) # ((\medidor1|espera~3_combout\) # (!\medidor1|espera~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|espera~4_combout\,
	datab => \medidor1|espera~5_combout\,
	datac => \medidor1|espera~6_combout\,
	datad => \medidor1|espera~3_combout\,
	combout => \medidor1|espera~7_combout\);

-- Location: LCCOMB_X113_Y25_N18
\medidor1|espera~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|espera~8_combout\ = (\medidor1|espera~0_combout\) # ((\medidor1|espera~q\ & ((\medidor1|espera~1_combout\) # (\medidor1|espera~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|espera~1_combout\,
	datab => \medidor1|espera~7_combout\,
	datac => \medidor1|espera~q\,
	datad => \medidor1|espera~0_combout\,
	combout => \medidor1|espera~8_combout\);

-- Location: FF_X113_Y25_N19
\medidor1|espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|espera~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|espera~q\);

-- Location: LCCOMB_X113_Y26_N6
\medidor1|centimetros_unid[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_unid[3]~6_combout\ = (\medidor1|espera~q\ & (!\medidor1|digitounidad[3]~1_combout\ & ((\medidor1|Trigger~0_combout\) # (\medidor1|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|espera~q\,
	datab => \medidor1|Trigger~0_combout\,
	datac => \medidor1|digitounidad[3]~1_combout\,
	datad => \medidor1|Equal1~2_combout\,
	combout => \medidor1|centimetros_unid[3]~6_combout\);

-- Location: FF_X114_Y26_N29
\medidor1|centimetros_unid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_unid~8_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_unid\(0));

-- Location: LCCOMB_X114_Y26_N26
\medidor1|centimetros_unid~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_unid~7_combout\ = (!\medidor1|centimetros_dece[3]~4_combout\ & (!\medidor1|Trigger~0_combout\ & (\medidor1|centimetros_unid\(1) $ (\medidor1|centimetros_unid\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_dece[3]~4_combout\,
	datab => \medidor1|Trigger~0_combout\,
	datac => \medidor1|centimetros_unid\(1),
	datad => \medidor1|centimetros_unid\(0),
	combout => \medidor1|centimetros_unid~7_combout\);

-- Location: FF_X114_Y26_N27
\medidor1|centimetros_unid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_unid~7_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_unid\(1));

-- Location: LCCOMB_X114_Y26_N2
\medidor1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Add1~1_combout\ = \medidor1|centimetros_unid\(3) $ (((\medidor1|centimetros_unid\(2) & (\medidor1|centimetros_unid\(1) & \medidor1|centimetros_unid\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_unid\(3),
	datab => \medidor1|centimetros_unid\(2),
	datac => \medidor1|centimetros_unid\(1),
	datad => \medidor1|centimetros_unid\(0),
	combout => \medidor1|Add1~1_combout\);

-- Location: LCCOMB_X114_Y26_N0
\medidor1|centimetros_unid~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_unid~10_combout\ = (!\medidor1|centimetros_dece[3]~4_combout\ & (\medidor1|Add1~1_combout\ & ((\medidor1|eco_pasado~q\) # (!\medidor1|eco_sinc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|eco_sinc~q\,
	datab => \medidor1|eco_pasado~q\,
	datac => \medidor1|centimetros_dece[3]~4_combout\,
	datad => \medidor1|Add1~1_combout\,
	combout => \medidor1|centimetros_unid~10_combout\);

-- Location: FF_X114_Y26_N1
\medidor1|centimetros_unid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_unid~10_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_unid\(3));

-- Location: LCCOMB_X114_Y26_N14
\medidor1|centimetros_dece[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece[3]~4_combout\ = (\medidor1|centimetros_unid\(3) & (!\medidor1|centimetros_unid\(2) & (!\medidor1|centimetros_unid\(1) & \medidor1|centimetros_unid\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_unid\(3),
	datab => \medidor1|centimetros_unid\(2),
	datac => \medidor1|centimetros_unid\(1),
	datad => \medidor1|centimetros_unid\(0),
	combout => \medidor1|centimetros_dece[3]~4_combout\);

-- Location: LCCOMB_X114_Y26_N30
\medidor1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Add1~0_combout\ = \medidor1|centimetros_unid\(2) $ (((\medidor1|centimetros_unid\(1) & \medidor1|centimetros_unid\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_unid\(1),
	datab => \medidor1|centimetros_unid\(2),
	datad => \medidor1|centimetros_unid\(0),
	combout => \medidor1|Add1~0_combout\);

-- Location: LCCOMB_X114_Y26_N8
\medidor1|centimetros_unid~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_unid~9_combout\ = (!\medidor1|centimetros_dece[3]~4_combout\ & (\medidor1|Add1~0_combout\ & ((\medidor1|eco_pasado~q\) # (!\medidor1|eco_sinc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|eco_sinc~q\,
	datab => \medidor1|eco_pasado~q\,
	datac => \medidor1|centimetros_dece[3]~4_combout\,
	datad => \medidor1|Add1~0_combout\,
	combout => \medidor1|centimetros_unid~9_combout\);

-- Location: FF_X114_Y26_N9
\medidor1|centimetros_unid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_unid~9_combout\,
	ena => \medidor1|centimetros_unid[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_unid\(2));

-- Location: LCCOMB_X114_Y30_N18
\medidor1|sal_unid[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_unid[2]~feeder_combout\ = \medidor1|centimetros_unid\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_unid\(2),
	combout => \medidor1|sal_unid[2]~feeder_combout\);

-- Location: FF_X114_Y30_N19
\medidor1|sal_unid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_unid[2]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_unid\(2));

-- Location: LCCOMB_X114_Y30_N12
\medidor1|digitounidad[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[2]~feeder_combout\ = \medidor1|sal_unid\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_unid\(2),
	combout => \medidor1|digitounidad[2]~feeder_combout\);

-- Location: FF_X114_Y30_N13
\medidor1|digitounidad[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitounidad[2]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitounidad\(2));

-- Location: LCCOMB_X114_Y30_N26
\medidor1|sal_unid[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_unid[0]~feeder_combout\ = \medidor1|centimetros_unid\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|centimetros_unid\(0),
	combout => \medidor1|sal_unid[0]~feeder_combout\);

-- Location: FF_X114_Y30_N27
\medidor1|sal_unid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_unid[0]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_unid\(0));

-- Location: LCCOMB_X114_Y30_N0
\medidor1|digitounidad[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[0]~feeder_combout\ = \medidor1|sal_unid\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|sal_unid\(0),
	combout => \medidor1|digitounidad[0]~feeder_combout\);

-- Location: FF_X114_Y30_N1
\medidor1|digitounidad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitounidad[0]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitounidad\(0));

-- Location: LCCOMB_X114_Y30_N24
\medidor1|sal_unid[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_unid[1]~feeder_combout\ = \medidor1|centimetros_unid\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \medidor1|centimetros_unid\(1),
	combout => \medidor1|sal_unid[1]~feeder_combout\);

-- Location: FF_X114_Y30_N25
\medidor1|sal_unid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_unid[1]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_unid\(1));

-- Location: LCCOMB_X114_Y30_N30
\medidor1|digitounidad[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[1]~feeder_combout\ = \medidor1|sal_unid\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_unid\(1),
	combout => \medidor1|digitounidad[1]~feeder_combout\);

-- Location: FF_X114_Y30_N31
\medidor1|digitounidad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitounidad[1]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitounidad\(1));

-- Location: LCCOMB_X114_Y30_N20
\medidor1|sal_unid[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_unid[3]~feeder_combout\ = \medidor1|centimetros_unid\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_unid\(3),
	combout => \medidor1|sal_unid[3]~feeder_combout\);

-- Location: FF_X114_Y30_N21
\medidor1|sal_unid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_unid[3]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_unid\(3));

-- Location: LCCOMB_X114_Y30_N10
\medidor1|digitounidad[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitounidad[3]~feeder_combout\ = \medidor1|sal_unid\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_unid\(3),
	combout => \medidor1|digitounidad[3]~feeder_combout\);

-- Location: FF_X114_Y30_N11
\medidor1|digitounidad[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitounidad[3]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitounidad\(3));

-- Location: LCCOMB_X114_Y30_N8
\conversor1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux6~0_combout\ = (\medidor1|digitounidad\(1) & (((\medidor1|digitounidad\(3))))) # (!\medidor1|digitounidad\(1) & (\medidor1|digitounidad\(2) $ (((\medidor1|digitounidad\(0) & !\medidor1|digitounidad\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N6
\conversor1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux5~0_combout\ = (\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(3)) # (\medidor1|digitounidad\(0) $ (\medidor1|digitounidad\(1))))) # (!\medidor1|digitounidad\(2) & (((\medidor1|digitounidad\(1) & \medidor1|digitounidad\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\conversor1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux4~0_combout\ = (\medidor1|digitounidad\(2) & (((\medidor1|digitounidad\(3))))) # (!\medidor1|digitounidad\(2) & (\medidor1|digitounidad\(1) & ((\medidor1|digitounidad\(3)) # (!\medidor1|digitounidad\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\conversor1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux3~0_combout\ = (\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(3)) # (\medidor1|digitounidad\(0) $ (!\medidor1|digitounidad\(1))))) # (!\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(1) & ((\medidor1|digitounidad\(3)))) # 
-- (!\medidor1|digitounidad\(1) & (\medidor1|digitounidad\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N16
\conversor1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux2~0_combout\ = (\medidor1|digitounidad\(0)) # ((\medidor1|digitounidad\(1) & ((\medidor1|digitounidad\(3)))) # (!\medidor1|digitounidad\(1) & (\medidor1|digitounidad\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\conversor1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux1~0_combout\ = (\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(3)) # ((\medidor1|digitounidad\(0) & \medidor1|digitounidad\(1))))) # (!\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(1)) # ((\medidor1|digitounidad\(0) & 
-- !\medidor1|digitounidad\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N28
\conversor1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor1|Mux0~0_combout\ = (\medidor1|digitounidad\(2) & (!\medidor1|digitounidad\(3) & ((!\medidor1|digitounidad\(1)) # (!\medidor1|digitounidad\(0))))) # (!\medidor1|digitounidad\(2) & ((\medidor1|digitounidad\(1) $ (\medidor1|digitounidad\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitounidad\(2),
	datab => \medidor1|digitounidad\(0),
	datac => \medidor1|digitounidad\(1),
	datad => \medidor1|digitounidad\(3),
	combout => \conversor1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y25_N18
\medidor1|centimetros_dece~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece~5_combout\ = (!\medidor1|centimetros_dece\(0) & ((\medidor1|eco_pasado~q\) # (!\medidor1|eco_sinc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|eco_sinc~q\,
	datac => \medidor1|centimetros_dece\(0),
	datad => \medidor1|eco_pasado~q\,
	combout => \medidor1|centimetros_dece~5_combout\);

-- Location: LCCOMB_X114_Y25_N8
\medidor1|centimetros_dece[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece[3]~6_combout\ = (\medidor1|espera~q\ & ((\medidor1|Trigger~0_combout\) # ((\medidor1|centimetros_dece[3]~4_combout\ & \medidor1|espera~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_dece[3]~4_combout\,
	datab => \medidor1|espera~q\,
	datac => \medidor1|Trigger~0_combout\,
	datad => \medidor1|espera~6_combout\,
	combout => \medidor1|centimetros_dece[3]~6_combout\);

-- Location: FF_X114_Y25_N19
\medidor1|centimetros_dece[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_dece~5_combout\,
	ena => \medidor1|centimetros_dece[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_dece\(0));

-- Location: LCCOMB_X114_Y25_N12
\medidor1|centimetros_dece~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece~7_combout\ = (\medidor1|eco_pasado~q\ & ((\medidor1|centimetros_dece\(1) $ (\medidor1|centimetros_dece\(0))))) # (!\medidor1|eco_pasado~q\ & (!\medidor1|eco_sinc~q\ & (\medidor1|centimetros_dece\(1) $ 
-- (\medidor1|centimetros_dece\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|eco_pasado~q\,
	datab => \medidor1|eco_sinc~q\,
	datac => \medidor1|centimetros_dece\(1),
	datad => \medidor1|centimetros_dece\(0),
	combout => \medidor1|centimetros_dece~7_combout\);

-- Location: FF_X114_Y25_N13
\medidor1|centimetros_dece[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_dece~7_combout\,
	ena => \medidor1|centimetros_dece[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_dece\(1));

-- Location: LCCOMB_X114_Y25_N2
\medidor1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|Add0~0_combout\ = (\medidor1|centimetros_dece\(1) & \medidor1|centimetros_dece\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|centimetros_dece\(1),
	datad => \medidor1|centimetros_dece\(0),
	combout => \medidor1|Add0~0_combout\);

-- Location: LCCOMB_X114_Y25_N28
\medidor1|centimetros_dece~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece~9_combout\ = (\medidor1|eco_sinc~q\ & (\medidor1|eco_pasado~q\ & (\medidor1|Add0~0_combout\ $ (\medidor1|centimetros_dece\(2))))) # (!\medidor1|eco_sinc~q\ & (\medidor1|Add0~0_combout\ $ ((\medidor1|centimetros_dece\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Add0~0_combout\,
	datab => \medidor1|eco_sinc~q\,
	datac => \medidor1|centimetros_dece\(2),
	datad => \medidor1|eco_pasado~q\,
	combout => \medidor1|centimetros_dece~9_combout\);

-- Location: FF_X114_Y25_N29
\medidor1|centimetros_dece[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_dece~9_combout\,
	ena => \medidor1|centimetros_dece[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_dece\(2));

-- Location: LCCOMB_X114_Y25_N6
\medidor1|sal_dece[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_dece[2]~feeder_combout\ = \medidor1|centimetros_dece\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_dece\(2),
	combout => \medidor1|sal_dece[2]~feeder_combout\);

-- Location: FF_X114_Y25_N7
\medidor1|sal_dece[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_dece[2]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_dece\(2));

-- Location: LCCOMB_X114_Y25_N26
\medidor1|digitodecena[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitodecena[2]~feeder_combout\ = \medidor1|sal_dece\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_dece\(2),
	combout => \medidor1|digitodecena[2]~feeder_combout\);

-- Location: FF_X114_Y25_N27
\medidor1|digitodecena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitodecena[2]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitodecena\(2));

-- Location: LCCOMB_X114_Y25_N20
\medidor1|sal_dece[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_dece[1]~feeder_combout\ = \medidor1|centimetros_dece\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_dece\(1),
	combout => \medidor1|sal_dece[1]~feeder_combout\);

-- Location: FF_X114_Y25_N21
\medidor1|sal_dece[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_dece[1]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_dece\(1));

-- Location: LCCOMB_X114_Y25_N0
\medidor1|digitodecena[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitodecena[1]~feeder_combout\ = \medidor1|sal_dece\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_dece\(1),
	combout => \medidor1|digitodecena[1]~feeder_combout\);

-- Location: FF_X114_Y25_N1
\medidor1|digitodecena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitodecena[1]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitodecena\(1));

-- Location: LCCOMB_X114_Y25_N16
\medidor1|centimetros_dece~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|centimetros_dece~8_combout\ = (!\medidor1|Trigger~0_combout\ & (\medidor1|centimetros_dece\(3) $ (((\medidor1|Add0~0_combout\ & \medidor1|centimetros_dece\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Add0~0_combout\,
	datab => \medidor1|Trigger~0_combout\,
	datac => \medidor1|centimetros_dece\(3),
	datad => \medidor1|centimetros_dece\(2),
	combout => \medidor1|centimetros_dece~8_combout\);

-- Location: FF_X114_Y25_N17
\medidor1|centimetros_dece[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|centimetros_dece~8_combout\,
	ena => \medidor1|centimetros_dece[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|centimetros_dece\(3));

-- Location: LCCOMB_X114_Y25_N22
\medidor1|sal_dece[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_dece[3]~feeder_combout\ = \medidor1|centimetros_dece\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_dece\(3),
	combout => \medidor1|sal_dece[3]~feeder_combout\);

-- Location: FF_X114_Y25_N23
\medidor1|sal_dece[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_dece[3]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_dece\(3));

-- Location: FF_X114_Y25_N3
\medidor1|digitodecena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \medidor1|sal_dece\(3),
	sload => VCC,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitodecena\(3));

-- Location: LCCOMB_X114_Y25_N10
\medidor1|sal_dece[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sal_dece[0]~feeder_combout\ = \medidor1|centimetros_dece\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|centimetros_dece\(0),
	combout => \medidor1|sal_dece[0]~feeder_combout\);

-- Location: FF_X114_Y25_N11
\medidor1|sal_dece[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sal_dece[0]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sal_dece\(0));

-- Location: LCCOMB_X114_Y25_N24
\medidor1|digitodecena[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|digitodecena[0]~feeder_combout\ = \medidor1|sal_dece\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \medidor1|sal_dece\(0),
	combout => \medidor1|digitodecena[0]~feeder_combout\);

-- Location: FF_X114_Y25_N25
\medidor1|digitodecena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|digitodecena[0]~feeder_combout\,
	ena => \medidor1|digitounidad[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|digitodecena\(0));

-- Location: LCCOMB_X114_Y29_N0
\conversor2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux6~0_combout\ = (\medidor1|digitodecena\(1) & (((\medidor1|digitodecena\(3))))) # (!\medidor1|digitodecena\(1) & (\medidor1|digitodecena\(2) $ (((!\medidor1|digitodecena\(3) & \medidor1|digitodecena\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(2),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(3),
	datad => \medidor1|digitodecena\(0),
	combout => \conversor2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y29_N10
\conversor2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux5~0_combout\ = (\medidor1|digitodecena\(2) & ((\medidor1|digitodecena\(3)) # (\medidor1|digitodecena\(1) $ (\medidor1|digitodecena\(0))))) # (!\medidor1|digitodecena\(2) & (\medidor1|digitodecena\(1) & (\medidor1|digitodecena\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(2),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(3),
	datad => \medidor1|digitodecena\(0),
	combout => \conversor2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y25_N4
\conversor2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux4~0_combout\ = (\medidor1|digitodecena\(2) & (((\medidor1|digitodecena\(3))))) # (!\medidor1|digitodecena\(2) & (\medidor1|digitodecena\(1) & ((\medidor1|digitodecena\(3)) # (!\medidor1|digitodecena\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(0),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(2),
	datad => \medidor1|digitodecena\(3),
	combout => \conversor2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y29_N16
\conversor2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux3~0_combout\ = (\medidor1|digitodecena\(2) & ((\medidor1|digitodecena\(3)) # (\medidor1|digitodecena\(1) $ (!\medidor1|digitodecena\(0))))) # (!\medidor1|digitodecena\(2) & ((\medidor1|digitodecena\(1) & (\medidor1|digitodecena\(3))) # 
-- (!\medidor1|digitodecena\(1) & ((\medidor1|digitodecena\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(2),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(3),
	datad => \medidor1|digitodecena\(0),
	combout => \conversor2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y25_N30
\conversor2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux2~0_combout\ = (\medidor1|digitodecena\(0)) # ((\medidor1|digitodecena\(1) & ((\medidor1|digitodecena\(3)))) # (!\medidor1|digitodecena\(1) & (\medidor1|digitodecena\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(0),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(2),
	datad => \medidor1|digitodecena\(3),
	combout => \conversor2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y25_N14
\conversor2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux1~0_combout\ = (\medidor1|digitodecena\(0) & ((\medidor1|digitodecena\(1)) # (\medidor1|digitodecena\(2) $ (!\medidor1|digitodecena\(3))))) # (!\medidor1|digitodecena\(0) & ((\medidor1|digitodecena\(2) & ((\medidor1|digitodecena\(3)))) # 
-- (!\medidor1|digitodecena\(2) & (\medidor1|digitodecena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(0),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(2),
	datad => \medidor1|digitodecena\(3),
	combout => \conversor2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y29_N30
\conversor2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conversor2|Mux0~0_combout\ = (\medidor1|digitodecena\(2) & (!\medidor1|digitodecena\(3) & ((!\medidor1|digitodecena\(0)) # (!\medidor1|digitodecena\(1))))) # (!\medidor1|digitodecena\(2) & (\medidor1|digitodecena\(1) $ ((\medidor1|digitodecena\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|digitodecena\(2),
	datab => \medidor1|digitodecena\(1),
	datac => \medidor1|digitodecena\(3),
	datad => \medidor1|digitodecena\(0),
	combout => \conversor2|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y73_N8
\simuld[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simuld(0),
	o => \simuld[0]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\simuld[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simuld(3),
	o => \simuld[3]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\simuld[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simuld(1),
	o => \simuld[1]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\simuld[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simuld(2),
	o => \simuld[2]~input_o\);

-- Location: LCCOMB_X41_Y72_N8
\maquina1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|LessThan0~0_combout\ = (!\simuld[3]~input_o\ & (!\simuld[2]~input_o\ & ((!\simuld[1]~input_o\) # (!\simuld[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simuld[0]~input_o\,
	datab => \simuld[3]~input_o\,
	datac => \simuld[1]~input_o\,
	datad => \simuld[2]~input_o\,
	combout => \maquina1|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y72_N10
\maquina1|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector2~2_combout\ = (!\simuld[3]~input_o\ & (((!\simuld[0]~input_o\ & !\simuld[1]~input_o\)) # (!\simuld[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simuld[0]~input_o\,
	datab => \simuld[3]~input_o\,
	datac => \simuld[1]~input_o\,
	datad => \simuld[2]~input_o\,
	combout => \maquina1|Selector2~2_combout\);

-- Location: LCCOMB_X41_Y72_N18
\maquina1|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector1~3_combout\ = (!\maquina1|Selector2~2_combout\ & \maquina1|estado.PERIGO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector2~2_combout\,
	datad => \maquina1|estado.PERIGO~q\,
	combout => \maquina1|Selector1~3_combout\);

-- Location: LCCOMB_X41_Y72_N28
\maquina1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector0~0_combout\ = (!\maquina1|Selector2~2_combout\ & \maquina1|estado.CUIDADO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector2~2_combout\,
	datad => \maquina1|estado.CUIDADO~q\,
	combout => \maquina1|Selector0~0_combout\);

-- Location: LCCOMB_X41_Y72_N30
\maquina1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector1~1_combout\ = (\maquina1|LessThan0~0_combout\ & (!\maquina1|Selector2~2_combout\ & ((\maquina1|estado.PERIGO~q\)))) # (!\maquina1|LessThan0~0_combout\ & ((\maquina1|estado.SEGURO~q\ & ((\maquina1|estado.PERIGO~q\))) # 
-- (!\maquina1|estado.SEGURO~q\ & (\maquina1|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector2~2_combout\,
	datab => \maquina1|LessThan0~0_combout\,
	datac => \maquina1|estado.SEGURO~q\,
	datad => \maquina1|estado.PERIGO~q\,
	combout => \maquina1|Selector1~1_combout\);

-- Location: LCCOMB_X41_Y72_N20
\maquina1|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector1~2_combout\ = \maquina1|Selector1~1_combout\ $ (\maquina1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina1|Selector1~1_combout\,
	datad => \maquina1|Selector1~0_combout\,
	combout => \maquina1|Selector1~2_combout\);

-- Location: LCCOMB_X41_Y72_N22
\maquina1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector0~1_combout\ = (\maquina1|Selector1~2_combout\ & (!\maquina1|Selector1~3_combout\ & (!\maquina1|Selector0~0_combout\))) # (!\maquina1|Selector1~2_combout\ & (((\maquina1|estado.SEGURO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector1~3_combout\,
	datab => \maquina1|Selector0~0_combout\,
	datac => \maquina1|estado.SEGURO~q\,
	datad => \maquina1|Selector1~2_combout\,
	combout => \maquina1|Selector0~1_combout\);

-- Location: FF_X41_Y72_N23
\maquina1|estado.SEGURO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina1|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina1|estado.SEGURO~q\);

-- Location: LCCOMB_X41_Y72_N12
\maquina1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector1~0_combout\ = (\maquina1|LessThan0~0_combout\ & ((\maquina1|estado.SEGURO~q\ $ (!\maquina1|estado.CUIDADO~q\)))) # (!\maquina1|LessThan0~0_combout\ & (!\maquina1|Selector2~2_combout\ & ((\maquina1|estado.CUIDADO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector2~2_combout\,
	datab => \maquina1|LessThan0~0_combout\,
	datac => \maquina1|estado.SEGURO~q\,
	datad => \maquina1|estado.CUIDADO~q\,
	combout => \maquina1|Selector1~0_combout\);

-- Location: LCCOMB_X41_Y72_N0
\maquina1|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector1~4_combout\ = (\maquina1|Selector1~0_combout\ & (((\maquina1|estado.CUIDADO~q\ & \maquina1|Selector1~1_combout\)))) # (!\maquina1|Selector1~0_combout\ & ((\maquina1|Selector1~1_combout\ & (!\maquina1|Selector1~3_combout\)) # 
-- (!\maquina1|Selector1~1_combout\ & ((\maquina1|estado.CUIDADO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector1~3_combout\,
	datab => \maquina1|Selector1~0_combout\,
	datac => \maquina1|estado.CUIDADO~q\,
	datad => \maquina1|Selector1~1_combout\,
	combout => \maquina1|Selector1~4_combout\);

-- Location: FF_X41_Y72_N1
\maquina1|estado.CUIDADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina1|Selector1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina1|estado.CUIDADO~q\);

-- Location: LCCOMB_X41_Y72_N26
\maquina1|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector2~3_combout\ = (\maquina1|LessThan0~0_combout\ & ((\maquina1|estado.CUIDADO~q\ & (\maquina1|Selector2~2_combout\)) # (!\maquina1|estado.CUIDADO~q\ & ((!\maquina1|estado.SEGURO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|LessThan0~0_combout\,
	datab => \maquina1|estado.CUIDADO~q\,
	datac => \maquina1|Selector2~2_combout\,
	datad => \maquina1|estado.SEGURO~q\,
	combout => \maquina1|Selector2~3_combout\);

-- Location: LCCOMB_X41_Y72_N24
\maquina1|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|Selector2~4_combout\ = (\maquina1|Selector1~2_combout\ & (\maquina1|Selector2~3_combout\ & ((\maquina1|Selector2~2_combout\) # (!\maquina1|estado.PERIGO~q\)))) # (!\maquina1|Selector1~2_combout\ & (((\maquina1|estado.PERIGO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina1|Selector2~3_combout\,
	datab => \maquina1|Selector2~2_combout\,
	datac => \maquina1|estado.PERIGO~q\,
	datad => \maquina1|Selector1~2_combout\,
	combout => \maquina1|Selector2~4_combout\);

-- Location: FF_X41_Y72_N25
\maquina1|estado.PERIGO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina1|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina1|estado.PERIGO~q\);

-- Location: LCCOMB_X41_Y72_N16
\maquina1|saida_motor[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|saida_motor[0]~feeder_combout\ = \maquina1|estado.PERIGO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina1|estado.PERIGO~q\,
	combout => \maquina1|saida_motor[0]~feeder_combout\);

-- Location: FF_X41_Y72_N17
\maquina1|saida_motor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina1|saida_motor[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina1|saida_motor\(0));

-- Location: LCCOMB_X41_Y72_N14
\maquina1|saida_motor[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina1|saida_motor[1]~feeder_combout\ = \maquina1|estado.SEGURO~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maquina1|estado.SEGURO~q\,
	combout => \maquina1|saida_motor[1]~feeder_combout\);

-- Location: FF_X41_Y72_N15
\maquina1|saida_motor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina1|saida_motor[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina1|saida_motor\(1));

-- Location: LCCOMB_X114_Y26_N10
\medidor1|sensor_disp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sensor_disp~0_combout\ = (!\medidor1|espera~q\ & (((!\medidor1|Equal0~3_combout\) # (!\medidor1|Equal0~0_combout\)) # (!\medidor1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \medidor1|Equal0~4_combout\,
	datab => \medidor1|espera~q\,
	datac => \medidor1|Equal0~0_combout\,
	datad => \medidor1|Equal0~3_combout\,
	combout => \medidor1|sensor_disp~0_combout\);

-- Location: LCCOMB_X114_Y26_N6
\medidor1|sensor_disp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \medidor1|sensor_disp~1_combout\ = (\medidor1|sensor_disp~0_combout\) # ((\medidor1|espera~q\ & \medidor1|sensor_disp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \medidor1|espera~q\,
	datac => \medidor1|sensor_disp~q\,
	datad => \medidor1|sensor_disp~0_combout\,
	combout => \medidor1|sensor_disp~1_combout\);

-- Location: FF_X114_Y26_N7
\medidor1|sensor_disp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \medidor1|sensor_disp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \medidor1|sensor_disp~q\);

ww_unidades_7seg(0) <= \unidades_7seg[0]~output_o\;

ww_unidades_7seg(1) <= \unidades_7seg[1]~output_o\;

ww_unidades_7seg(2) <= \unidades_7seg[2]~output_o\;

ww_unidades_7seg(3) <= \unidades_7seg[3]~output_o\;

ww_unidades_7seg(4) <= \unidades_7seg[4]~output_o\;

ww_unidades_7seg(5) <= \unidades_7seg[5]~output_o\;

ww_unidades_7seg(6) <= \unidades_7seg[6]~output_o\;

ww_dezenas_7seg(0) <= \dezenas_7seg[0]~output_o\;

ww_dezenas_7seg(1) <= \dezenas_7seg[1]~output_o\;

ww_dezenas_7seg(2) <= \dezenas_7seg[2]~output_o\;

ww_dezenas_7seg(3) <= \dezenas_7seg[3]~output_o\;

ww_dezenas_7seg(4) <= \dezenas_7seg[4]~output_o\;

ww_dezenas_7seg(5) <= \dezenas_7seg[5]~output_o\;

ww_dezenas_7seg(6) <= \dezenas_7seg[6]~output_o\;

ww_s_motor(0) <= \s_motor[0]~output_o\;

ww_s_motor(1) <= \s_motor[1]~output_o\;

ww_TRIG_HC_SR04 <= \TRIG_HC_SR04~output_o\;
END structure;


