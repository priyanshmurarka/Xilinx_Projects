----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2024 16:43:50
-- Design Name: 
-- Module Name: myfa - Behavioral
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

entity myfa is
    Port ( i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           c : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end myfa;

architecture Behavioral of myfa is


begin
sum<=i1 XOR i2 XOR c;
cout<= (i1 AND i2) OR (i2 AND c) OR (c AND i1);

end Behavioral;
