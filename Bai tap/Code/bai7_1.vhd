-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Khai bao thuc the
entity bai7_1 is
    port(
      clk : in std_logic; 
      rst : in std_logic;
      d : in std_logic;
      q : out std_logic
    );
end entity bai7_1;
 
architecture Behavioral of bai7_1 is
begin
    process (clk,rst) is
    begin
        if rst = '1' then
            q <= '0';
        else
            if clk'event and clk = '1' then
                q <= d;
            end if;
        end if;
    end process;
end architecture Behavioral;