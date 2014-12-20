-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
-- Khai bao thuc the
entity bai2_2 is
    port (
        a,b,c   : in  std_logic;
        d       : out std_logic
    );
end bai2_2;
-- Khai bao cau truc
architecture behavior of bai2_2 is
begin
    d <= a nand ((a and b) or (not c));
end behavior;