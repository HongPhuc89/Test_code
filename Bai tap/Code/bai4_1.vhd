-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
-- Khai bao thuc the
entity bai4_1 is
    port (
        din   : in  std_logic_vector(2 downto 0);
        dout  : out std_logic_vector(7 downto 0)
    );
end bai4_1;
-- Khai bao cau truc
architecture behavior of bai4_1 is
-- Dinh nghia cac kieu du lieu

begin

    dout <= ("10000000") when (din="000") else
            ("01000000") when (din="001") else
            ("00100000") when (din="010") else
            ("00010000") when (din="011") else
            ("00001000") when (din="100") else
            ("00000100") when (din="101") else
            ("00000010") when (din="110") else
            ("00000001") ;
end behavior;