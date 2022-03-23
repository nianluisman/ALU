LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_unsigned.all;

ENTITY ALU IS
 PORT( -- Input Signals
Op_code : in std_logic_vector(6 DOWNTO 0);
A_input, B_input : in std_logic_vector(7 DOWNTO 0);
-- Output Signals
ALU_output : out std_logic_vector(7 DOWNTO 0));
END ALU;
ARCHITECTURE behavior OF ALU IS
-- declare signal(s) internal to module here
SIGNAL temp_output: std_logic_vector(7 DOWNTO 0);
BEGIN
 PROCESS (Op_code, A_input, B_input)
 VARIABLE TEMP_VAR: std_logic_vector(7 DOWNTO 0); 
BEGIN
IF OP_CODE(6 DOWNTO 5) = "00" THEN
-- Select Arithmetic/Logical Operation
CASE Op_Code (3 DOWNTO 0) IS
WHEN "0111" =>
 temp_output <= A_input + B_input; -- ADDWF
WHEN "0101" =>
 temp_output <= A_input AND B_input; --ANDWF
WHEN "0010" =>
temp_output <=  A_input; 
 temp_output <= "00000000"; 	--CLRF
WHEN "1010" =>
 temp_output <= A_input + 1; 	--INCF
WHEN "1000" => 
 temp_output <= A_input; 		--MOVF
WHEN OTHERS =>
 temp_output <= "00000000";
END CASE;
-- Kijk of je te maken hebt met de BSF operatie.
ELSIF OP_CODE(6 DOWNTO 5) = "01" THEN
-- Controleer in de opcode of dit daadwerkelijk BSF is.
IF OP_CODE(4 DOWNTO 3) = "01" THEN
-- Je gaat een specifieke bit instellen.
TEMP_VAR:= A_input; -- Je maakt gebruik van een variabele, anders blijft Quartus maar fouten geven...
TEMP_VAR(to_integer(unsigned(OP_CODE(2 DOWNTO 0)))):= '1'; -- Stel de specifieke bit in, in de daarvoor beschikbare bits in de opcode.
temp_output <= TEMP_VAR; -- De bit is gewijzigd.
ELSE
temp_output <= "00000000"; -- Het singaal is niet gerepresenteerd, de ALU heeft geen uitvoer.
END IF;
-- De opcode is niet herkend, met deze opcode kan de ALU niet werken, dus alles wordt '0'.
ELSE
temp_output <= "00000000"; -- Het singaal is niet gerepresenteerd, de ALU heeft geen uitvoer.
END IF;

Alu_output <= temp_output;
 END PROCESS;
END behavior;