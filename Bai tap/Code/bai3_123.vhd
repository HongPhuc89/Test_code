-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
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
subtype int1 is integer range 0 to 15;
type IntArray is array (1 downto 0,4 downto 0) of integer;
type slv4_16 is array(3 downto 0) of std_logic_vector(15 downto 0) ;

begin
    process(clk)
        variable NI : NewInt;
        variable NF : NewFloat;
        variable VO : VOWEL;
        variable I1 : int1;
        variable IA : IntArray;
        variable SLV: slv4_16;
    begin
        NI := NI + 1;
        NF := real(NI) + NF;
        IA(1,4) := NI * I1;
        VO := 'u';
        SLV(0):= "1111000010101100";
        SLV(2):= std_logic_vector(to_unsigned(I1,16));
        I1 := to_integer(unsigned(SLV(3)));
    end process;
end behavior;