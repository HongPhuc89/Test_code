-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;

-- Khai bao thuc the
entity bai8_1 is
    port (
        a,b,d   : in std_logic;
        clk,rst : in std_logic;
        x       : out std_logic
    );
end bai8_1;
-- Khai bao cau truc
architecture behavior of bai8_1 is
-- Dinh nghia cac kieu du lieu
type states is (state_A,state_B);
signal current_state,next_state : states;
begin
    -- Phan mach day
    process(rst,d,clk)
    begin
        if rst = '1' then
            current_state <= state_A;
        else
            if clk'event and clk = '1' then
                if d = '1' then
                    current_state <= next_state;
                end if;
            end if;
        end if;
    end process;
    -- Phan mach to hop
    process(current_state,clk)
    begin
        case current_state is
            when state_A => x <= a;
                            next_state <= state_B;
            when state_B => x <= b;
                            next_state <= state_A;
        end case;
    end process;
end behavior;