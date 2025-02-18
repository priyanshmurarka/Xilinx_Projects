----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2024 16:54:22
-- Design Name: 
-- Module Name: mycounter - Behavioral
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

entity mycounter is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end mycounter;

architecture Behavioral of mycounter is
constant num1:natural:=99999999;
constant num2:natural:=15;
signal ncount:natural range 0 to 100000000:=0;
signal mcount: natural range 0 to 16:=0;
begin

process(clk)
begin
if rising_edge(clk) then 
ncount<=ncount+1;
if ncount>num1 then 
mcount<=mcount +1;
ncount<=0;
if(mcount>num2 OR rst='1') then 
mcount <=0;
end if;
end if;
end if ;
end process;

process(mcount)
begin
case mcount is

when 0=> Q<="0000";
when 1=> Q<="0001";
when 2=> Q<="0010";
when 3=> Q<="0011";
when 4=> Q<="0100";
when 5=> Q<="0101";
when 6=> Q<="0110";
when 7=> Q<="0111";
when 8=> Q<="1000";
when 9=> Q<="1001";
when 10=> Q<="1010";
when 11=> Q<="1011";
when 12=> Q<="1100";
when 13=> Q<="1101";
when 14=> Q<="1110";
when 15=> Q<="1111";
when others=> Q<="0000";
end case;
end process;


end Behavioral;
