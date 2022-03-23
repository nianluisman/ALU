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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/21/2021 13:51:35"

-- 
-- Device: Altera 10M08SAE144C8GES Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Op_code : IN std_logic_vector(6 DOWNTO 0);
	A_input : IN std_logic_vector(7 DOWNTO 0);
	B_input : IN std_logic_vector(7 DOWNTO 0);
	ALU_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALU_output[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[1]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[2]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[6]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_output[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[3]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[6]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[4]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[0]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[0]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[2]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[0]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[3]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[4]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[5]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[6]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[6]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_input[7]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_input[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op_code : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_A_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \ALU_output[0]~output_o\ : std_logic;
SIGNAL \ALU_output[1]~output_o\ : std_logic;
SIGNAL \ALU_output[2]~output_o\ : std_logic;
SIGNAL \ALU_output[3]~output_o\ : std_logic;
SIGNAL \ALU_output[4]~output_o\ : std_logic;
SIGNAL \ALU_output[5]~output_o\ : std_logic;
SIGNAL \ALU_output[6]~output_o\ : std_logic;
SIGNAL \ALU_output[7]~output_o\ : std_logic;
SIGNAL \Op_code[6]~input_o\ : std_logic;
SIGNAL \Op_code[5]~input_o\ : std_logic;
SIGNAL \Op_code[3]~input_o\ : std_logic;
SIGNAL \Op_code[2]~input_o\ : std_logic;
SIGNAL \Op_code[0]~input_o\ : std_logic;
SIGNAL \Op_code[1]~input_o\ : std_logic;
SIGNAL \temp_output~6_combout\ : std_logic;
SIGNAL \temp_output~7_combout\ : std_logic;
SIGNAL \A_input[0]~input_o\ : std_logic;
SIGNAL \Op_code[4]~input_o\ : std_logic;
SIGNAL \temp_output~0_combout\ : std_logic;
SIGNAL \temp_output~1_combout\ : std_logic;
SIGNAL \temp_output~2_combout\ : std_logic;
SIGNAL \B_input[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \temp_output~4_combout\ : std_logic;
SIGNAL \temp_output~3_combout\ : std_logic;
SIGNAL \temp_output~5_combout\ : std_logic;
SIGNAL \temp_output~8_combout\ : std_logic;
SIGNAL \A_input[1]~input_o\ : std_logic;
SIGNAL \B_input[1]~input_o\ : std_logic;
SIGNAL \temp_output~11_combout\ : std_logic;
SIGNAL \temp_output~12_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \temp_output~9_combout\ : std_logic;
SIGNAL \temp_output~10_combout\ : std_logic;
SIGNAL \temp_output~13_combout\ : std_logic;
SIGNAL \A_input[2]~input_o\ : std_logic;
SIGNAL \B_input[2]~input_o\ : std_logic;
SIGNAL \temp_output~15_combout\ : std_logic;
SIGNAL \temp_output~16_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \temp_output~14_combout\ : std_logic;
SIGNAL \temp_output~17_combout\ : std_logic;
SIGNAL \A_input[3]~input_o\ : std_logic;
SIGNAL \B_input[3]~input_o\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \temp_output~19_combout\ : std_logic;
SIGNAL \temp_output~20_combout\ : std_logic;
SIGNAL \temp_output~18_combout\ : std_logic;
SIGNAL \temp_output~21_combout\ : std_logic;
SIGNAL \A_input[4]~input_o\ : std_logic;
SIGNAL \B_input[4]~input_o\ : std_logic;
SIGNAL \temp_output~24_combout\ : std_logic;
SIGNAL \temp_output~25_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \temp_output~22_combout\ : std_logic;
SIGNAL \temp_output~23_combout\ : std_logic;
SIGNAL \temp_output~26_combout\ : std_logic;
SIGNAL \A_input[5]~input_o\ : std_logic;
SIGNAL \temp_output~29_combout\ : std_logic;
SIGNAL \B_input[5]~input_o\ : std_logic;
SIGNAL \temp_output~27_combout\ : std_logic;
SIGNAL \temp_output~28_combout\ : std_logic;
SIGNAL \temp_output~30_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \temp_output~31_combout\ : std_logic;
SIGNAL \B_input[6]~input_o\ : std_logic;
SIGNAL \temp_output~33_combout\ : std_logic;
SIGNAL \A_input[6]~input_o\ : std_logic;
SIGNAL \temp_output~34_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \temp_output~32_combout\ : std_logic;
SIGNAL \temp_output~35_combout\ : std_logic;
SIGNAL \temp_output~36_combout\ : std_logic;
SIGNAL \B_input[7]~input_o\ : std_logic;
SIGNAL \temp_output~37_combout\ : std_logic;
SIGNAL \temp_output~38_combout\ : std_logic;
SIGNAL \A_input[7]~input_o\ : std_logic;
SIGNAL \temp_output~39_combout\ : std_logic;
SIGNAL \temp_output~40_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \temp_output~41_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Op_code <= Op_code;
ww_A_input <= A_input;
ww_B_input <= B_input;
ALU_output <= ww_ALU_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y19_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X15_Y0_N23
\ALU_output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~8_combout\,
	devoe => ww_devoe,
	o => \ALU_output[0]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\ALU_output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~13_combout\,
	devoe => ww_devoe,
	o => \ALU_output[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\ALU_output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~17_combout\,
	devoe => ww_devoe,
	o => \ALU_output[2]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\ALU_output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~21_combout\,
	devoe => ww_devoe,
	o => \ALU_output[3]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\ALU_output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~26_combout\,
	devoe => ww_devoe,
	o => \ALU_output[4]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\ALU_output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~31_combout\,
	devoe => ww_devoe,
	o => \ALU_output[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\ALU_output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~35_combout\,
	devoe => ww_devoe,
	o => \ALU_output[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\ALU_output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_output~41_combout\,
	devoe => ww_devoe,
	o => \ALU_output[7]~output_o\);

-- Location: IOIBUF_X10_Y15_N15
\Op_code[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(6),
	o => \Op_code[6]~input_o\);

-- Location: IOIBUF_X6_Y10_N22
\Op_code[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(5),
	o => \Op_code[5]~input_o\);

-- Location: IOIBUF_X10_Y18_N22
\Op_code[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(3),
	o => \Op_code[3]~input_o\);

-- Location: IOIBUF_X10_Y20_N22
\Op_code[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(2),
	o => \Op_code[2]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\Op_code[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(0),
	o => \Op_code[0]~input_o\);

-- Location: IOIBUF_X10_Y22_N22
\Op_code[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(1),
	o => \Op_code[1]~input_o\);

-- Location: LCCOMB_X11_Y18_N20
\temp_output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~6_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[3]~input_o\ & (!\Op_code[2]~input_o\ & !\Op_code[0]~input_o\)) # (!\Op_code[3]~input_o\ & (\Op_code[2]~input_o\ & \Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[3]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \temp_output~6_combout\);

-- Location: LCCOMB_X11_Y18_N6
\temp_output~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~7_combout\ = (!\Op_code[6]~input_o\ & (!\Op_code[5]~input_o\ & \temp_output~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[6]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \temp_output~6_combout\,
	combout => \temp_output~7_combout\);

-- Location: IOIBUF_X10_Y19_N22
\A_input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(0),
	o => \A_input[0]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\Op_code[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(4),
	o => \Op_code[4]~input_o\);

-- Location: LCCOMB_X11_Y18_N8
\temp_output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~0_combout\ = (!\Op_code[6]~input_o\ & (\Op_code[3]~input_o\ & (\Op_code[5]~input_o\ & !\Op_code[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[6]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \Op_code[4]~input_o\,
	combout => \temp_output~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\temp_output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~1_combout\ = (!\Op_code[2]~input_o\ & !\Op_code[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~1_combout\);

-- Location: LCCOMB_X15_Y19_N0
\temp_output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~2_combout\ = (\temp_output~0_combout\ & ((\A_input[0]~input_o\) # ((!\Op_code[1]~input_o\ & \temp_output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \A_input[0]~input_o\,
	datac => \temp_output~0_combout\,
	datad => \temp_output~1_combout\,
	combout => \temp_output~2_combout\);

-- Location: IOIBUF_X31_Y19_N1
\B_input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(0),
	o => \B_input[0]~input_o\);

-- Location: LCCOMB_X16_Y18_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Op_code[3]~input_o\) # (\B_input[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op_code[3]~input_o\,
	datad => \B_input[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X15_Y18_N12
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\A_input[0]~input_o\ & (\Add0~0_combout\ $ (VCC))) # (!\A_input[0]~input_o\ & (\Add0~0_combout\ & VCC))
-- \Add0~2\ = CARRY((\A_input[0]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X11_Y18_N2
\temp_output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~4_combout\ = (!\Op_code[6]~input_o\ & (!\Op_code[5]~input_o\ & !\Op_code[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[6]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \temp_output~4_combout\);

-- Location: LCCOMB_X16_Y18_N2
\temp_output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~3_combout\ = (\Op_code[2]~input_o\ & (\B_input[0]~input_o\ & (!\Op_code[3]~input_o\ & \Op_code[0]~input_o\))) # (!\Op_code[2]~input_o\ & (((\Op_code[3]~input_o\ & !\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \B_input[0]~input_o\,
	datac => \Op_code[3]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~3_combout\);

-- Location: LCCOMB_X15_Y19_N10
\temp_output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~5_combout\ = (\A_input[0]~input_o\ & (\temp_output~4_combout\ & \temp_output~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_input[0]~input_o\,
	datac => \temp_output~4_combout\,
	datad => \temp_output~3_combout\,
	combout => \temp_output~5_combout\);

-- Location: LCCOMB_X15_Y19_N12
\temp_output~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~8_combout\ = (\temp_output~2_combout\) # ((\temp_output~5_combout\) # ((\temp_output~7_combout\ & \Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~2_combout\,
	datac => \Add0~1_combout\,
	datad => \temp_output~5_combout\,
	combout => \temp_output~8_combout\);

-- Location: IOIBUF_X15_Y25_N15
\A_input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(1),
	o => \A_input[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B_input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(1),
	o => \B_input[1]~input_o\);

-- Location: LCCOMB_X16_Y18_N6
\temp_output~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~11_combout\ = (\Op_code[2]~input_o\ & (!\Op_code[3]~input_o\ & (\B_input[1]~input_o\ & \Op_code[0]~input_o\))) # (!\Op_code[2]~input_o\ & (\Op_code[3]~input_o\ & ((!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \B_input[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~11_combout\);

-- Location: LCCOMB_X15_Y20_N28
\temp_output~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~12_combout\ = (\temp_output~4_combout\ & (\A_input[1]~input_o\ & \temp_output~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_output~4_combout\,
	datac => \A_input[1]~input_o\,
	datad => \temp_output~11_combout\,
	combout => \temp_output~12_combout\);

-- Location: LCCOMB_X16_Y18_N24
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (!\Op_code[3]~input_o\ & \B_input[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datad => \B_input[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X15_Y18_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\A_input[1]~input_o\ & ((\Add0~3_combout\ & (\Add0~2\ & VCC)) # (!\Add0~3_combout\ & (!\Add0~2\)))) # (!\A_input[1]~input_o\ & ((\Add0~3_combout\ & (!\Add0~2\)) # (!\Add0~3_combout\ & ((\Add0~2\) # (GND)))))
-- \Add0~5\ = CARRY((\A_input[1]~input_o\ & (!\Add0~3_combout\ & !\Add0~2\)) # (!\A_input[1]~input_o\ & ((!\Add0~2\) # (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[1]~input_o\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X15_Y20_N8
\temp_output~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~9_combout\ = (!\Op_code[2]~input_o\ & \Op_code[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datac => \Op_code[0]~input_o\,
	combout => \temp_output~9_combout\);

-- Location: LCCOMB_X15_Y20_N10
\temp_output~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~10_combout\ = (\temp_output~0_combout\ & ((\A_input[1]~input_o\) # ((\temp_output~9_combout\ & !\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~0_combout\,
	datab => \temp_output~9_combout\,
	datac => \A_input[1]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \temp_output~10_combout\);

-- Location: LCCOMB_X15_Y20_N30
\temp_output~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~13_combout\ = (\temp_output~12_combout\) # ((\temp_output~10_combout\) # ((\temp_output~7_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~12_combout\,
	datac => \Add0~4_combout\,
	datad => \temp_output~10_combout\,
	combout => \temp_output~13_combout\);

-- Location: IOIBUF_X24_Y25_N15
\A_input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(2),
	o => \A_input[2]~input_o\);

-- Location: IOIBUF_X10_Y17_N1
\B_input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(2),
	o => \B_input[2]~input_o\);

-- Location: LCCOMB_X16_Y18_N10
\temp_output~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~15_combout\ = (\Op_code[3]~input_o\ & (((!\Op_code[2]~input_o\ & !\Op_code[0]~input_o\)))) # (!\Op_code[3]~input_o\ & (\B_input[2]~input_o\ & (\Op_code[2]~input_o\ & \Op_code[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[2]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~15_combout\);

-- Location: LCCOMB_X15_Y19_N24
\temp_output~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~16_combout\ = (\temp_output~4_combout\ & (\A_input[2]~input_o\ & \temp_output~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_output~4_combout\,
	datac => \A_input[2]~input_o\,
	datad => \temp_output~15_combout\,
	combout => \temp_output~16_combout\);

-- Location: LCCOMB_X16_Y18_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B_input[2]~input_o\ & !\Op_code[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[2]~input_o\,
	datac => \Op_code[3]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X15_Y18_N16
\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\Add0~6_combout\ $ (\A_input[2]~input_o\ $ (!\Add0~5\)))) # (GND)
-- \Add0~8\ = CARRY((\Add0~6_combout\ & ((\A_input[2]~input_o\) # (!\Add0~5\))) # (!\Add0~6_combout\ & (\A_input[2]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \A_input[2]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X15_Y19_N6
\temp_output~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~14_combout\ = (\temp_output~0_combout\ & ((\A_input[2]~input_o\) # ((\Op_code[1]~input_o\ & \temp_output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \temp_output~0_combout\,
	datac => \A_input[2]~input_o\,
	datad => \temp_output~1_combout\,
	combout => \temp_output~14_combout\);

-- Location: LCCOMB_X15_Y19_N26
\temp_output~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~17_combout\ = (\temp_output~16_combout\) # ((\temp_output~14_combout\) # ((\temp_output~7_combout\ & \Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~16_combout\,
	datac => \Add0~7_combout\,
	datad => \temp_output~14_combout\,
	combout => \temp_output~17_combout\);

-- Location: IOIBUF_X10_Y21_N15
\A_input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(3),
	o => \A_input[3]~input_o\);

-- Location: IOIBUF_X19_Y25_N8
\B_input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(3),
	o => \B_input[3]~input_o\);

-- Location: LCCOMB_X16_Y18_N8
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (!\Op_code[3]~input_o\ & \B_input[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datac => \B_input[3]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X15_Y18_N18
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A_input[3]~input_o\ & ((\Add0~9_combout\ & (\Add0~8\ & VCC)) # (!\Add0~9_combout\ & (!\Add0~8\)))) # (!\A_input[3]~input_o\ & ((\Add0~9_combout\ & (!\Add0~8\)) # (!\Add0~9_combout\ & ((\Add0~8\) # (GND)))))
-- \Add0~11\ = CARRY((\A_input[3]~input_o\ & (!\Add0~9_combout\ & !\Add0~8\)) # (!\A_input[3]~input_o\ & ((!\Add0~8\) # (!\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[3]~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X16_Y18_N30
\temp_output~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~19_combout\ = (\Op_code[2]~input_o\ & (!\Op_code[3]~input_o\ & (\B_input[3]~input_o\ & \Op_code[0]~input_o\))) # (!\Op_code[2]~input_o\ & (\Op_code[3]~input_o\ & ((!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \B_input[3]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~19_combout\);

-- Location: LCCOMB_X15_Y20_N2
\temp_output~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~20_combout\ = (\temp_output~4_combout\ & (\A_input[3]~input_o\ & \temp_output~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_output~4_combout\,
	datac => \A_input[3]~input_o\,
	datad => \temp_output~19_combout\,
	combout => \temp_output~20_combout\);

-- Location: LCCOMB_X15_Y20_N24
\temp_output~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~18_combout\ = (\temp_output~0_combout\ & ((\A_input[3]~input_o\) # ((\Op_code[1]~input_o\ & \temp_output~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \temp_output~9_combout\,
	datac => \A_input[3]~input_o\,
	datad => \temp_output~0_combout\,
	combout => \temp_output~18_combout\);

-- Location: LCCOMB_X15_Y20_N4
\temp_output~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~21_combout\ = (\temp_output~20_combout\) # ((\temp_output~18_combout\) # ((\Add0~10_combout\ & \temp_output~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \temp_output~20_combout\,
	datac => \temp_output~18_combout\,
	datad => \temp_output~7_combout\,
	combout => \temp_output~21_combout\);

-- Location: IOIBUF_X10_Y20_N15
\A_input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(4),
	o => \A_input[4]~input_o\);

-- Location: IOIBUF_X19_Y25_N1
\B_input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(4),
	o => \B_input[4]~input_o\);

-- Location: LCCOMB_X16_Y18_N26
\temp_output~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~24_combout\ = (\Op_code[2]~input_o\ & (!\Op_code[3]~input_o\ & (\B_input[4]~input_o\ & \Op_code[0]~input_o\))) # (!\Op_code[2]~input_o\ & (\Op_code[3]~input_o\ & ((!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \B_input[4]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~24_combout\);

-- Location: LCCOMB_X15_Y20_N18
\temp_output~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~25_combout\ = (\temp_output~4_combout\ & (\A_input[4]~input_o\ & \temp_output~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_output~4_combout\,
	datac => \A_input[4]~input_o\,
	datad => \temp_output~24_combout\,
	combout => \temp_output~25_combout\);

-- Location: LCCOMB_X16_Y18_N28
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (!\Op_code[3]~input_o\ & \B_input[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datad => \B_input[4]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X15_Y18_N20
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\A_input[4]~input_o\ $ (\Add0~12_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\A_input[4]~input_o\ & ((\Add0~12_combout\) # (!\Add0~11\))) # (!\A_input[4]~input_o\ & (\Add0~12_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[4]~input_o\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X15_Y20_N14
\temp_output~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~22_combout\ = (\Op_code[2]~input_o\ & !\Op_code[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datac => \Op_code[0]~input_o\,
	combout => \temp_output~22_combout\);

-- Location: LCCOMB_X15_Y20_N0
\temp_output~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~23_combout\ = (\temp_output~0_combout\ & ((\A_input[4]~input_o\) # ((!\Op_code[1]~input_o\ & \temp_output~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \A_input[4]~input_o\,
	datac => \temp_output~22_combout\,
	datad => \temp_output~0_combout\,
	combout => \temp_output~23_combout\);

-- Location: LCCOMB_X15_Y20_N20
\temp_output~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~26_combout\ = (\temp_output~25_combout\) # ((\temp_output~23_combout\) # ((\temp_output~7_combout\ & \Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~25_combout\,
	datac => \Add0~13_combout\,
	datad => \temp_output~23_combout\,
	combout => \temp_output~26_combout\);

-- Location: IOIBUF_X13_Y0_N15
\A_input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(5),
	o => \A_input[5]~input_o\);

-- Location: LCCOMB_X11_Y18_N12
\temp_output~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~29_combout\ = (\A_input[5]~input_o\) # ((!\Op_code[1]~input_o\ & (\Op_code[0]~input_o\ & \Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_input[5]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \temp_output~29_combout\);

-- Location: IOIBUF_X10_Y19_N15
\B_input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(5),
	o => \B_input[5]~input_o\);

-- Location: LCCOMB_X11_Y18_N16
\temp_output~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~27_combout\ = (\Op_code[3]~input_o\ & (((!\Op_code[0]~input_o\ & !\Op_code[2]~input_o\)))) # (!\Op_code[3]~input_o\ & (\B_input[5]~input_o\ & (\Op_code[0]~input_o\ & \Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[3]~input_o\,
	datab => \B_input[5]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \temp_output~27_combout\);

-- Location: LCCOMB_X11_Y18_N18
\temp_output~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~28_combout\ = (!\Op_code[6]~input_o\ & (!\Op_code[1]~input_o\ & (!\Op_code[5]~input_o\ & \A_input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[6]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \A_input[5]~input_o\,
	combout => \temp_output~28_combout\);

-- Location: LCCOMB_X11_Y18_N30
\temp_output~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~30_combout\ = (\temp_output~29_combout\ & ((\temp_output~0_combout\) # ((\temp_output~27_combout\ & \temp_output~28_combout\)))) # (!\temp_output~29_combout\ & (\temp_output~27_combout\ & ((\temp_output~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~29_combout\,
	datab => \temp_output~27_combout\,
	datac => \temp_output~0_combout\,
	datad => \temp_output~28_combout\,
	combout => \temp_output~30_combout\);

-- Location: LCCOMB_X11_Y18_N0
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (!\Op_code[3]~input_o\ & \B_input[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datad => \B_input[5]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X15_Y18_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15_combout\ & ((\A_input[5]~input_o\ & (\Add0~14\ & VCC)) # (!\A_input[5]~input_o\ & (!\Add0~14\)))) # (!\Add0~15_combout\ & ((\A_input[5]~input_o\ & (!\Add0~14\)) # (!\A_input[5]~input_o\ & ((\Add0~14\) # (GND)))))
-- \Add0~17\ = CARRY((\Add0~15_combout\ & (!\A_input[5]~input_o\ & !\Add0~14\)) # (!\Add0~15_combout\ & ((!\Add0~14\) # (!\A_input[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \A_input[5]~input_o\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X15_Y19_N4
\temp_output~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~31_combout\ = (\temp_output~30_combout\) # ((\temp_output~7_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~30_combout\,
	datad => \Add0~16_combout\,
	combout => \temp_output~31_combout\);

-- Location: IOIBUF_X10_Y15_N22
\B_input[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(6),
	o => \B_input[6]~input_o\);

-- Location: LCCOMB_X16_Y18_N22
\temp_output~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~33_combout\ = (\Op_code[2]~input_o\ & (!\Op_code[3]~input_o\ & (\B_input[6]~input_o\ & \Op_code[0]~input_o\))) # (!\Op_code[2]~input_o\ & (\Op_code[3]~input_o\ & ((!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[3]~input_o\,
	datac => \B_input[6]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \temp_output~33_combout\);

-- Location: IOIBUF_X31_Y17_N22
\A_input[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(6),
	o => \A_input[6]~input_o\);

-- Location: LCCOMB_X15_Y20_N16
\temp_output~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~34_combout\ = (\temp_output~33_combout\ & (\temp_output~4_combout\ & \A_input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~33_combout\,
	datab => \temp_output~4_combout\,
	datac => \A_input[6]~input_o\,
	combout => \temp_output~34_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (!\Op_code[3]~input_o\ & \B_input[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datac => \B_input[6]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X15_Y18_N24
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\Add0~18_combout\ $ (\A_input[6]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~20\ = CARRY((\Add0~18_combout\ & ((\A_input[6]~input_o\) # (!\Add0~17\))) # (!\Add0~18_combout\ & (\A_input[6]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A_input[6]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X15_Y20_N6
\temp_output~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~32_combout\ = (\temp_output~0_combout\ & ((\A_input[6]~input_o\) # ((\Op_code[1]~input_o\ & \temp_output~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \temp_output~22_combout\,
	datac => \A_input[6]~input_o\,
	datad => \temp_output~0_combout\,
	combout => \temp_output~32_combout\);

-- Location: LCCOMB_X15_Y20_N26
\temp_output~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~35_combout\ = (\temp_output~34_combout\) # ((\temp_output~32_combout\) # ((\temp_output~7_combout\ & \Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~34_combout\,
	datac => \Add0~19_combout\,
	datad => \temp_output~32_combout\,
	combout => \temp_output~35_combout\);

-- Location: LCCOMB_X11_Y18_N26
\temp_output~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~36_combout\ = (\Op_code[3]~input_o\ & (\Op_code[5]~input_o\ & !\Op_code[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \Op_code[4]~input_o\,
	combout => \temp_output~36_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B_input[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_input(7),
	o => \B_input[7]~input_o\);

-- Location: LCCOMB_X11_Y18_N28
\temp_output~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~37_combout\ = (\Op_code[2]~input_o\ & (\B_input[7]~input_o\ & (\Op_code[0]~input_o\ & !\Op_code[3]~input_o\))) # (!\Op_code[2]~input_o\ & (((!\Op_code[0]~input_o\ & \Op_code[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_input[7]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[3]~input_o\,
	combout => \temp_output~37_combout\);

-- Location: LCCOMB_X11_Y18_N22
\temp_output~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~38_combout\ = (\temp_output~36_combout\) # ((!\Op_code[1]~input_o\ & (!\Op_code[5]~input_o\ & \temp_output~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~36_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[5]~input_o\,
	datad => \temp_output~37_combout\,
	combout => \temp_output~38_combout\);

-- Location: IOIBUF_X10_Y21_N22
\A_input[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_input(7),
	o => \A_input[7]~input_o\);

-- Location: LCCOMB_X11_Y18_N24
\temp_output~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~39_combout\ = (\temp_output~38_combout\ & (\A_input[7]~input_o\ & !\Op_code[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~38_combout\,
	datab => \A_input[7]~input_o\,
	datac => \Op_code[6]~input_o\,
	combout => \temp_output~39_combout\);

-- Location: LCCOMB_X11_Y18_N10
\temp_output~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~40_combout\ = (\temp_output~0_combout\ & (\Op_code[1]~input_o\ & (\Op_code[0]~input_o\ & \Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~0_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \temp_output~40_combout\);

-- Location: LCCOMB_X11_Y18_N4
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (!\Op_code[3]~input_o\ & \B_input[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[3]~input_o\,
	datac => \B_input[7]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X15_Y18_N26
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \A_input[7]~input_o\ $ (\Add0~20\ $ (\Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A_input[7]~input_o\,
	datad => \Add0~21_combout\,
	cin => \Add0~20\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X11_Y18_N14
\temp_output~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_output~41_combout\ = (\temp_output~39_combout\) # ((\temp_output~40_combout\) # ((\temp_output~7_combout\ & \Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_output~7_combout\,
	datab => \temp_output~39_combout\,
	datac => \temp_output~40_combout\,
	datad => \Add0~22_combout\,
	combout => \temp_output~41_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_ALU_output(0) <= \ALU_output[0]~output_o\;

ww_ALU_output(1) <= \ALU_output[1]~output_o\;

ww_ALU_output(2) <= \ALU_output[2]~output_o\;

ww_ALU_output(3) <= \ALU_output[3]~output_o\;

ww_ALU_output(4) <= \ALU_output[4]~output_o\;

ww_ALU_output(5) <= \ALU_output[5]~output_o\;

ww_ALU_output(6) <= \ALU_output[6]~output_o\;

ww_ALU_output(7) <= \ALU_output[7]~output_o\;
END structure;


