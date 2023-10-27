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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2023 23:46:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProjetoSensorDeAviso
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProjetoSensorDeAviso_vhd_vec_tst IS
END ProjetoSensorDeAviso_vhd_vec_tst;
ARCHITECTURE ProjetoSensorDeAviso_arch OF ProjetoSensorDeAviso_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dezenas_7seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ECHO_HC_SR04 : STD_LOGIC;
SIGNAL s_motor : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL simuld : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TRIG_HC_SR04 : STD_LOGIC;
SIGNAL unidades_7seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ProjetoSensorDeAviso
	PORT (
	clk : IN STD_LOGIC;
	dezenas_7seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ECHO_HC_SR04 : IN STD_LOGIC;
	s_motor : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	simuld : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	TRIG_HC_SR04 : OUT STD_LOGIC;
	unidades_7seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ProjetoSensorDeAviso
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dezenas_7seg => dezenas_7seg,
	ECHO_HC_SR04 => ECHO_HC_SR04,
	s_motor => s_motor,
	simuld => simuld,
	TRIG_HC_SR04 => TRIG_HC_SR04,
	unidades_7seg => unidades_7seg
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- simuld[3]
t_prcs_simuld_3: PROCESS
BEGIN
	simuld(3) <= '0';
	WAIT FOR 80000 ps;
	simuld(3) <= '1';
	WAIT FOR 20000 ps;
	simuld(3) <= '0';
	WAIT FOR 290000 ps;
	simuld(3) <= '1';
	WAIT FOR 100000 ps;
	simuld(3) <= '0';
WAIT;
END PROCESS t_prcs_simuld_3;
-- simuld[2]
t_prcs_simuld_2: PROCESS
BEGIN
	simuld(2) <= '0';
	WAIT FOR 170000 ps;
	simuld(2) <= '1';
	WAIT FOR 80000 ps;
	simuld(2) <= '0';
	WAIT FOR 240000 ps;
	simuld(2) <= '1';
	WAIT FOR 20000 ps;
	simuld(2) <= '0';
	WAIT FOR 70000 ps;
	simuld(2) <= '1';
	WAIT FOR 90000 ps;
	simuld(2) <= '0';
WAIT;
END PROCESS t_prcs_simuld_2;
-- simuld[1]
t_prcs_simuld_1: PROCESS
BEGIN
	simuld(1) <= '0';
	WAIT FOR 480000 ps;
	simuld(1) <= '1';
	WAIT FOR 30000 ps;
	simuld(1) <= '0';
WAIT;
END PROCESS t_prcs_simuld_1;
-- simuld[0]
t_prcs_simuld_0: PROCESS
BEGIN
	simuld(0) <= '0';
	WAIT FOR 720000 ps;
	simuld(0) <= '1';
	WAIT FOR 90000 ps;
	simuld(0) <= '0';
WAIT;
END PROCESS t_prcs_simuld_0;
END ProjetoSensorDeAviso_arch;
