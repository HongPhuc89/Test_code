-- Khai bao thu vien
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
-- Khai bao thuc the
entity bai4_3 is
    port (
        din   : in  std_logic_vector(3 downto 0);
        dout  : out std_logic_vector(6 downto 0)
    );
end bai4_3;
-- Khai bao cau truc
architecture behavior of bai4_3 is
-- Dinh nghia cac kieu du lieu

begin
    process(din)
    begin
        case din is
                    when "0000"=> dout <="0000001";  -- '0'
                    when "0001"=> dout <="1001111";  -- '1'
                    when "0010"=> dout <="0010010";  -- '2'
                    when "0011"=> dout <="0000110";  -- '3'
                    when "0100"=> dout <="1001100";  -- '4' 
                    when "0101"=> dout <="0100100";  -- '5'
                    when "0110"=> dout <="0100000";  -- '6'
                    when "0111"=> dout <="0001111";  -- '7'
                    when "1000"=> dout <="0000000";  -- '8'
                    when "1001"=> dout <="0000100";  -- '9'
                    when "1010"=> dout <="0001000";  -- 'A'
                    when "1011"=> dout <="1100000";  -- 'B'
                    when "1100"=> dout <="0110001";  -- 'C'
                    when "1101"=> dout <="1000010";  -- 'D'
                    when "1110"=> dout <="0110000";  -- 'E'
                    when "1111"=> dout <="0111000";  -- 'F'
                    when others=> dout <="1111111"; 
                end case;
    end process;
end behavior;