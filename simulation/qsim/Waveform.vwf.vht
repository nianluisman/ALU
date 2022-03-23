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
-- Generated on "12/21/2021 14:18:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B_input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Op_code : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ALU
	PORT (
	A_input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B_input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Op_code : IN STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	A_input => A_input,
	ALU_output => ALU_output,
	B_input => B_input,
	Op_code => Op_code
	);
-- Op_code[6]
t_prcs_Op_code_6: PROCESS
BEGIN
	Op_code(6) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_6;
-- Op_code[5]
t_prcs_Op_code_5: PROCESS
BEGIN
	Op_code(5) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_5;
-- Op_code[4]
t_prcs_Op_code_4: PROCESS
BEGIN
	Op_code(4) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_4;
-- Op_code[3]
t_prcs_Op_code_3: PROCESS
BEGIN
	Op_code(3) <= '0';
	WAIT FOR 560000 ps;
	Op_code(3) <= '1';
	WAIT FOR 400000 ps;
	Op_code(3) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_3;
-- Op_code[2]
t_prcs_Op_code_2: PROCESS
BEGIN
	Op_code(2) <= '1';
	WAIT FOR 360000 ps;
	Op_code(2) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_2;
-- Op_code[1]
t_prcs_Op_code_1: PROCESS
BEGIN
	Op_code(1) <= '1';
	WAIT FOR 150000 ps;
	Op_code(1) <= '0';
	WAIT FOR 210000 ps;
	Op_code(1) <= '1';
	WAIT FOR 420000 ps;
	Op_code(1) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_1;
-- Op_code[0]
t_prcs_Op_code_0: PROCESS
BEGIN
	Op_code(0) <= '1';
	WAIT FOR 360000 ps;
	Op_code(0) <= '0';
WAIT;
END PROCESS t_prcs_Op_code_0;
-- A_input[7]
t_prcs_A_input_7: PROCESS
BEGIN
	A_input(7) <= '0';
WAIT;
END PROCESS t_prcs_A_input_7;
-- A_input[6]
t_prcs_A_input_6: PROCESS
BEGIN
	A_input(6) <= '0';
WAIT;
END PROCESS t_prcs_A_input_6;
-- A_input[5]
t_prcs_A_input_5: PROCESS
BEGIN
	A_input(5) <= '0';
WAIT;
END PROCESS t_prcs_A_input_5;
-- A_input[4]
t_prcs_A_input_4: PROCESS
BEGIN
	A_input(4) <= '0';
WAIT;
END PROCESS t_prcs_A_input_4;
-- A_input[3]
t_prcs_A_input_3: PROCESS
BEGIN
	A_input(3) <= '0';
WAIT;
END PROCESS t_prcs_A_input_3;
-- A_input[2]
t_prcs_A_input_2: PROCESS
BEGIN
	A_input(2) <= '0';
WAIT;
END PROCESS t_prcs_A_input_2;
-- A_input[1]
t_prcs_A_input_1: PROCESS
BEGIN
	A_input(1) <= '0';
WAIT;
END PROCESS t_prcs_A_input_1;
-- A_input[0]
t_prcs_A_input_0: PROCESS
BEGIN
	A_input(0) <= '1';
WAIT;
END PROCESS t_prcs_A_input_0;
-- B_input[7]
t_prcs_B_input_7: PROCESS
BEGIN
	B_input(7) <= '0';
WAIT;
END PROCESS t_prcs_B_input_7;
-- B_input[6]
t_prcs_B_input_6: PROCESS
BEGIN
	B_input(6) <= '0';
WAIT;
END PROCESS t_prcs_B_input_6;
-- B_input[5]
t_prcs_B_input_5: PROCESS
BEGIN
	B_input(5) <= '0';
WAIT;
END PROCESS t_prcs_B_input_5;
-- B_input[4]
t_prcs_B_input_4: PROCESS
BEGIN
	B_input(4) <= '0';
WAIT;
END PROCESS t_prcs_B_input_4;
-- B_input[3]
t_prcs_B_input_3: PROCESS
BEGIN
	B_input(3) <= '0';
WAIT;
END PROCESS t_prcs_B_input_3;
-- B_input[2]
t_prcs_B_input_2: PROCESS
BEGIN
	B_input(2) <= '0';
WAIT;
END PROCESS t_prcs_B_input_2;
-- B_input[1]
t_prcs_B_input_1: PROCESS
BEGIN
	B_input(1) <= '0';
WAIT;
END PROCESS t_prcs_B_input_1;
-- B_input[0]
t_prcs_B_input_0: PROCESS
BEGIN
	B_input(0) <= '1';
WAIT;
END PROCESS t_prcs_B_input_0;
END ALU_arch;
