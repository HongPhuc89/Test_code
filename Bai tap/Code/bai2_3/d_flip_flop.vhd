-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
-- Khai bao thuc the
entity d_flip_flop is
    port (
        d,clk,rst   : in  std_logic;
        q           : out std_logic
    );
end d_flip_flop;
-- Khai bao cau truc
architecture behavior of d_flip_flop is
begin
    flip_flop: process(d, clk, rst)
    begin
        if rst = '1' then
            q   <= '0';
        else
            if (clk'event and clk = '1') then
                q <= d;
            end if;
        end if;
    end process;
end behavior;