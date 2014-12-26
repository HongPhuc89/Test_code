-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;

-- Khai bao thuc the
entity bai6_2 is
    generic (n : integer := 8);
    port (
        clk_in  : in std_logic;
        reset   : in std_logic;
        clk_out : out std_logic
    );
end bai6_2;
-- Khai bao cau truc
architecture behavior of bai6_2 is
-- Dinh nghia cac kieu du lieu
begin
    process(clk_in,reset)
    variable counter : integer :=0;
    begin
        if reset = '1' then
            counter := 0;
            clk_out <= '0';
        else
            if clk_in'event and clk_in = '1' then
                if counter < n/2 then
                    clk_out <= '0';
                else
                    clk_out <= '1';
                end if;
                counter := counter + 1;
                if counter = n then 
                    counter := 0;
                end if;
            end if;
        end if;
    end process;
end behavior;