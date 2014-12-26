-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Khai bao thuc the
entity bai7_7 is
    Port (  reset,clk,start : in STD_LOGIC;
            data_in         : in STD_LOGIC_VECTOR (7 downto 0);
            data_out        : out STD_LOGIC);
end bai7_7;

architecture Behavioral of bai7_7 is
signal DST:STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
signal DATA,STOP:STD_LOGIC:='0';
begin
    process(reset,clk)
    begin
        if reset='1' then
            DST<=(others=>'0');
            DATA<='0';
            STOP<='0';
        elsif rising_edge(clk) then
            if start='1' then
                DATA<='1';--start bit
                STOP<='1';--stop bit
                DST<=data_in;
            else
                DATA<=DST(7);
                STOP<='0';
                DST<=DST(6 downto 0)&STOP;
            end if;
        end if;
    end process;
    data_out<=DATA;
end Behavioral;