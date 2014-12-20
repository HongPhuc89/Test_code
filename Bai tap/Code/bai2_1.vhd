-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
-- Khai bao thuc the
entity bai2_1 is
    port (
        a,b : in  std_logic_vector(7 downto 0);
        sel : in  std_logic_vector(1 downto 0);
        c   : out std_logic_vector(7 downto 0)
    );
end bai2_1;
-- Khai bao cau truc
architecture behavior of bai2_1 is
begin
    Multiplexer: process(a,b,sel)
    begin
        case sel is
            when "00" =>    c <= "00000000";
            when "01" =>    c <= a;
            when "10" =>    c <= b;
            when "11" =>    c <= "ZZZZZZZZ";
            when others =>  c <= "00000000"; -- unknown data
        end case;
    end process;
end behavior;