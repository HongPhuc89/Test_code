-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;

-- Khai bao thuc the
entity bai5_3 is
    port (
        input   : in  std_logic_vector(8 downto 0);
        output  : out std_logic_vector(2 downto 0)
    );
end bai5_3;
-- Khai bao cau truc
architecture behavior of bai5_3 is
-- inputh nghia cac kieu du lieu

begin
    output <=   "000" when (input="10000000") else
                "001" when (input="01000000") else
                "010" when (input="00100000") else
                "011" when (input="00010000") else
                "100" when (input="00001000") else
                "101" when (input="00000100") else
                "110" when (input="00000010") else
                "111";
end behavior;