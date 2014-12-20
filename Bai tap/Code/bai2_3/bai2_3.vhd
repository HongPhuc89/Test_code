-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
-- Khai bao thuc the
entity bai2_3 is
    generic (n      : integer := 8);
    port (
        clk, rst    : in  std_logic;
        d           : in  std_logic_vector(n-1 downto 0);
        q           : out std_logic_vector(n-1 downto 0)
    );
end bai2_3;
-- Khai bao cau truc
architecture behavior of bai2_3 is
-- Khai bao component
component d_flip_flop is
    port (
        d,clk,rst   : in  std_logic;
        q           : out std_logic
    );
end component;
begin
    mul_nbit: for i in 0 to (n-1) generate
        u : d_flip_flop 
            port map (d(i), clk, rst,q(i));
    end generate mul_nbit;
end behavior;