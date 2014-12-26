-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
-- Khai bao thuc the
entity bai3_123 is
    port (
        clk     : in  std_logic
    );
end bai3_123;
-- Khai bao cau truc
architecture behavior of bai3_123 is
-- Dinh nghia cac kieu du lieu
subtype NewInt  is integer range -2 to 6;
subtype NewFloat  is real range -5.3 to 16.2;
type VOWEL  is ('u','e','o','a','i');
subtype int is integer range 0 to 15;
type IntArray is array (1 downto 0,4 downto 0) of integer;
type slv4_16 is array(3 downto 0) of std_logic_vector(15 downto 0) ;

begin

end behavior;