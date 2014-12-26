-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Khai bao thuc the
entity bai6_1b is
    port (
        clk_in  : in std_logic;
        reset   : in std_logic;
        counter : out std_logic_vector(3 downto 0)
    );
end bai6_1b;
-- Khai bao cau truc
architecture behavior of bai6_1b is
-- Dinh nghia cac kieu du lieu
begin
    process(clk_in,reset)
    variable tmp_counter : std_logic_vector(3 downto 0) := "0000";
    begin
        if reset = '1' then
            tmp_counter := "0000";
        else
            if clk_in'event and clk_in = '1' then
                tmp_counter := tmp_counter + 1;
                if tmp_counter = "1010" then
                    tmp_counter := "0000";
                end if;
            end if;
        end if;
        counter <= tmp_counter;
    end process;
end behavior;