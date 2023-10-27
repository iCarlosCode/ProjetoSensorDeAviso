library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity MaquinaDeAlarme is
	 Port (clk: in STD_LOGIC;
			dezena: in unsigned(3 downto 0) := (others => '0');
			s_motor: out std_logic_vector(1 downto 0)
		 );
		 

end MaquinaDeAlarme;

architecture a of MaquinaDeAlarme is
	 type State_Type is (SEGURO, CUIDADO, PERIGO);
	 
	 signal estado: State_type;
	 signal saida_motor: std_logic_vector(1 downto 0);
begin
	 
	 process(clk, estado, dezena)
	 begin
 
	 if(rising_edge(clk)) then 
	 
	 
	 	case estado is
			when SEGURO=> 
	 			saida_motor<= "00";

				if (dezena < 3) then
					estado <= PERIGO;
				elsif (dezena < 5) then
					estado <= CUIDADO;
				end if;
			when CUIDADO=> 
	 			saida_motor<= "10";
 
				if (dezena > 4) then
					estado <= SEGURO;
				elsif (dezena < 3) then
					estado <= PERIGO;
				end if;
			when PERIGO=> 
	 			saida_motor<= "11";
	   
				if (dezena > 4) then
					estado <= SEGURO;
				elsif (dezena > 2) then
					estado <= CUIDADO;
				end if;
		end case;
    end if;
	end process;
	
	s_motor <= saida_motor;
end a;