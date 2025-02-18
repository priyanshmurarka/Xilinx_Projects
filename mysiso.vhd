----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2024 17:22:40
-- Design Name: 
-- Module Name: mysiso - Behavioral
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

entity mysiso is
    Port ( D : in STD_LOGIC;
           clr : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end mysiso;

architecture Behavioral of mysiso is
constant num1:natural:=99999999;
signal ncount:natural range 0 to 100000000:=0;
signal mcount:STD_LOGIC;
begin
process(clk)

begin
if rising_edge(clk) then
ncount<=ncount+1;
if(ncount>num1) then 
ncount<=0;
mcount<= NOT mcount;
end if;
end if;
end process;

process(mcount)
variable mystate:STD_LOGIC_VECTOR(3 downto 0);
begin
if rising_edge(mcount) then 
if clr='1' then mystate:="0000";
else
mystate(0):=mystate(1);
mystate(1):=mystate(2);
mystate(2):=mystate(3);
mystate(3):=D;
end if;
end if;
Q<=mystate(0);
end process;


end Behavioral;
