-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;

-- Khai bao thuc the
entity bai5_2 is
    port (
        odd,even: in  std_logic_vector(8 downto 0);
        sel     : in std_logic_vector(2 downto 0);
        output  : out std_logic_vector(1 downto 0)
    );
end bai5_2;
-- Khai bao cau truc
architecture behavior of bai5_2 is
-- Dinh nghia cac kieu du lieu
component bai5_2_sub is
    port (
        input   : in  std_logic_vector(8 downto 0);
        sel     : in std_logic_vector(2 downto 0);
        output  : out std_logic
    );
end component;
begin
    odd_mul  : bai5_2_sub port map (odd ,sel,output(0));
    even_mul : bai5_2_sub port map (even,sel,output(1));
end behavior;