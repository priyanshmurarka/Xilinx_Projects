----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2024 17:22:05
-- Design Name: 
-- Module Name: mux4 - Behavioral
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

entity mux4 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is
component mymux2
PORT(a, b, s:in STD_LOGIC; y:out STD_LOGIC);
end component;
SIGNAL y1:STD_LOGIC;
SIGNAL y2:STD_LOGIC;
begin
u1:mymux2 PORT MAP(A,B,S0,y1);
u2:mymux2 PORT MAP(C,D,S0,y2);
u3:mymux2 PORT MAP(y1,y2,S1,Y);



end Behavioral;
