---------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------
ENTITY bai7_8 IS
    PORT ( din, clk, rst: IN BIT;
    data: OUT BIT_VECTOR (6 DOWNTO 0);
    err, data_valid: OUT BIT);
END bai7_8;
---------------------------------------------
ARCHITECTURE rtl OF bai7_8 IS
BEGIN
    PROCESS (rst, clk)
    VARIABLE count: INTEGER RANGE 0 TO 10;
    VARIABLE reg: BIT_VECTOR (10 DOWNTO 0);
    VARIABLE temp : BIT;
    BEGIN
        IF (rst='1') THEN
            count:=0;
            reg := (reg'RANGE => '0');
            temp := '0';
            err <= '0';
            data_valid <= '0';
        ELSIF (clk'EVENT AND clk='1') THEN
            IF (reg(0)='0' AND din='1') THEN
                reg(0) := '1';
            ELSIF (reg(0)='1') THEN
                count := count + 1;
                IF (count < 10) THEN
                    reg(count) := din;
                ELSIF (count = 10) THEN
                    temp := (reg(1) XOR reg(2) XOR reg(3) XOR
                    reg(4) XOR reg(5) XOR reg(6) XOR
                    reg(7) XOR reg(8)) OR NOT reg(9);
                    err <= temp;
                    count := 0;
                    reg(0) := din;
                    IF (temp = '0') THEN
                        data_valid <= '1';
                        data <= reg(7 DOWNTO 1);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END rtl;
-------------------------------------------------
