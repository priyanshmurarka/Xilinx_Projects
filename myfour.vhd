----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2024 16:33:59
-- Design Name: 
-- Module Name: myfour - Behavioral
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

entity myfour is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end myfour;

architecture Behavioral of myfour is
component myfa
PORT(i1, i2, c:in  STD_LOGIC; sum,cout:out STD_LOGIC);
end component;
SIGNAL c1,c2,c3,c4,c5,c6,c7,c8:STD_LOGIC;
SIGNAL s1,s2,s3,s4,en,s5,s6,s7,s8:STD_LOGIC;
SIGNAL x: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL y: STD_LOGIC_VECTOR(3 downto 0);
SIGNAL z: STD_LOGIC;
begin
z <= '0';
x(0) <= B(0) XOR Cin;
x(1) <= B(1) XOR Cin;
x(2) <= B(2) XOR Cin;
x(3) <= B(3) XOR Cin;
u1:myfa PORT MAP(A(0),x(0),Cin,s1,c1);
u2:myfa PORT MAP(A(1),x(1),c1,s2,c2);
u3:myfa PORT MAP(A(2),x(2),c2,s3,c3);
u4:myfa PORT MAP(A(3),x(3),c3,s4,c4);
Cout <= c4;
en<=(NOT c4) AND Cin;
y(0) <= s1 XOR en;
y(1) <= s2 XOR en;
y(2) <= s3 XOR en;
y(3) <= s4 XOR en;
u5:myfa PORT MAP(y(0),z,en,s5,c5);
u6:myfa PORT MAP(y(1),z,c5,s6,c6);
u7:myfa PORT MAP(y(2),z,c6,s7,c7);
u8:myfa PORT MAP(y(3),z,c7,s8,c8);

Sum(0)<= s5;
Sum(1)<= s6;
Sum(2)<= s7;
Sum(3)<= s8;








end Behavioral;
