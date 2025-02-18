----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2025 11:09:29
-- Design Name: 
-- Module Name: ALU_8bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU_8bit IS
    PORT (
        A, B     : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        Op       : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        Result   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        CarryOut : OUT STD_LOGIC;
        Zero     : OUT STD_LOGIC
    );
END ALU_8bit;

ARCHITECTURE Behavioral OF ALU_8bit IS
    SIGNAL InternalResult : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    PROCESS (A, B, Op)
        VARIABLE Temp : UNSIGNED(8 DOWNTO 0);
    BEGIN
        CASE Op IS
            WHEN "000" =>
                Temp := ('0' & UNSIGNED(A)) + UNSIGNED(B);
                InternalResult <= STD_LOGIC_VECTOR(Temp(7 DOWNTO 0));
                CarryOut <= Temp(8);
            WHEN "001" =>
                Temp := ('0' & UNSIGNED(A)) - UNSIGNED(B);
                InternalResult <= STD_LOGIC_VECTOR(Temp(7 DOWNTO 0));
                CarryOut <= Temp(8);
            WHEN "010" =>
                InternalResult <= A AND B;
                CarryOut <= '0';
            WHEN "011" =>
                InternalResult <= A OR B;
                CarryOut <= '0';
            WHEN "100" =>
                InternalResult <= A XOR B;
                CarryOut <= '0';
            WHEN "101" =>
                InternalResult <= NOT A;
                CarryOut <= '0';
            WHEN OTHERS =>
                InternalResult <= (OTHERS => '0');
                CarryOut <= '0';
        END CASE;
        
        IF InternalResult = "00000000" THEN
            Zero <= '1';
        ELSE
            Zero <= '0';
        END IF;
        
        Result <= InternalResult;
    END PROCESS;
END Behavioral;

