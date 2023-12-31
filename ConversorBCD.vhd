library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ConversorBCD is
	 Port(
		 num: in unsigned(3 downto 0) := (others => '0');
		 s_display: out std_logic_vector(6 downto 0)
		 );
		 

end ConversorBCD;

architecture a of ConversorBCD is
begin
	with num select
		s_display <= "1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0011000" when "1001",
			"1111111" when others;
end a;