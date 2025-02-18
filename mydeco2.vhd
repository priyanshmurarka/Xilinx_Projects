----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2024 18:02:56
-- Design Name: 
-- Module Name: mydeco2 - Behavioral
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

entity mydeco2 is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           e : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0));
end mydeco2;

architecture Behavioral of mydeco2 is

begin
Process(a,e)
begin
if e='0' then y<="0000";
else
case a is
when "00" => y <= "0001";
when "01" => y <= "0010";
when "10" => y <= "0100";
when "11" => y <= "1000";
when others => y <="0000";
end case;
end if;
end Process;

end Behavioral;
