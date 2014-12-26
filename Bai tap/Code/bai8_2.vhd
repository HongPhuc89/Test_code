-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;

-- Khai bao thuc the
entity bai8_2 is
    port (
        d       : in std_logic;
        clk,rst : in std_logic;
        q       : out std_logic
    );
end bai8_2;
-- Khai bao cau truc
architecture behavior of bai8_2 is
-- Dinh nghia cac kieu du lieu
type states is (zero,one,two,three);
signal current_state,left_next_state,right_next_state : states;
begin
    -- Phan mach day
    process(rst,d,clk)
    begin
        if rst = '1' then
            current_state <= zero;
        else
            if clk'event and clk = '1' then
                if d = '0' then
                    current_state <= left_next_state;
                else
                    current_state <= right_next_state;
                end if;
            end if;
        end if;
    end process;
    -- Phan mach to hop
    process(current_state)
    begin
        case current_state is
            when zero =>    q <= '0';
                            left_next_state     <= zero;
                            right_next_state    <= one;
            when one =>     q <= '0';
                            left_next_state     <= zero;
                            right_next_state    <= two;
            when two =>     q <= '0';
                            left_next_state     <= zero;
                            right_next_state    <= three;
            when three =>   q <= '1';
                            left_next_state     <= zero;
                            right_next_state    <= three;
        end case;
    end process;
end behavior;