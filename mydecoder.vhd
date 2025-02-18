----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2024 16:54:01
-- Design Name: 
-- Module Name: mydecoder - Behavioral
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

entity mydecoder is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           E : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end mydecoder;

architecture Behavioral of mydecoder is

begin
Process(A,E)
begin
if E='0' then Y<="0000";
else
case A is
when "00" => Y <= "0001";
when "01" => y <= "0010";
when "10" => y <= "0100";
when "11" => y <= "1000";
when others => Y <="0000";
end case;
end if;
end Process;

end Behavioral;
