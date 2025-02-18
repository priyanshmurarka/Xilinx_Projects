----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2024 17:47:30
-- Design Name: 
-- Module Name: mydecoder3 - Behavioral
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

entity mydecoder3 is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end mydecoder3;

architecture Behavioral of mydecoder3 is
component mydeco2
PORT(a:in STD_LOGIC_VECTOR(1 downto 0); e:in STD_LOGIC; y:out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL a1: STD_LOGIC_VECTOR (1 downto 0);
SIGNAL y1,y2: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL E,E1:STD_LOGIC;

begin
E<=A(2);
E1<= NOT E;
a1(0)<=A(0);
a1(1)<=A(1);

u1: mydeco2 PORT MAP(a1,E1,y1);
u2: mydeco2 PORT MAP(a1,E,y2);

Y(0)<=y1(0);
Y(1) <= y1(1);
Y(2) <= y1(2);
Y(3) <= y1(3);
Y(4) <= y2(0);
Y(5) <= y2(1);
Y(6) <= y2(2);
Y(7) <= y2(3);


end Behavioral;
