-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
-- Khai bao thuc the
entity bai5_1 is
    port (
        input   : in  std_logic_vector(3 downto 0);
        sel     : in std_logic_vector(1 downto 0);
        output  : out std_logic
    );
end bai5_1;
-- Khai bao cau truc
architecture behavior of bai5_1 is
-- Dinh nghia cac kieu du lieu

begin
    process(sel,input)
    begin
        case sel is
            when "00" => output <= input(0);
            when "01" => output <= input(1);
            when "10" => output <= input(2);
            when "11" => output <= input(3);
            when others => output <= '0';
        end case;
    end process;
end behavior;