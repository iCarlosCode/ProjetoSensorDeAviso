library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Medidor is
	 Port (clk: in STD_LOGIC;
		 --sensor
		 sensor_disp: out STD_LOGIC;
		 sensor_eco: in STD_LOGIC;
		 s_u: out unsigned(3 downto 0) := (others => '0');
		 s_d: out unsigned(3 downto 0) := (others => '0')
		 );
		 

end Medidor;

architecture a of Medidor is
	 signal cuenta: unsigned(16 downto 0) := (others => '0');
	
	--conversion de unidades
	
	 signal centimetros: unsigned(15 downto 0) := (others => '0');
	 signal centimetros_unid: unsigned(3 downto 0) := (others => '0');
	 signal centimetros_dece: unsigned(3 downto 0) := (others => '0');
	 signal sal_unid: unsigned(3 downto 0) := (others => '0');
	 signal sal_dece: unsigned(3 downto 0) := (others => '0');
	 signal digitounidad: unsigned(3 downto 0) := (others => '0');
	 signal digitodecena: unsigned(3 downto 0) := (others => '0');

	--señales del sensor
  	 signal eco_pasado: std_logic := '0';
	 signal eco_sinc: std_logic := '0';
	 signal eco_nsinc: std_logic := '0';
	 
	 signal espera: std_logic:= '0';
	 signal siete_seg_cuenta: unsigned(15 downto 0) := (others => '0');
	 
	 component ConversorBCD
	 port (num: in unsigned(3 downto 0) := (others => '0');
			 s_display: out std_logic_vector(6 downto 0)
		  );
	 end component;

 begin
 

 --displays
	
 
--trabajo del sensor 
	Trigger:process(clk)
		 begin
		 if rising_edge(clk) then
			 if espera = '0' then
			 
				 if cuenta = 500 then
					 sensor_disp <= '0';
					 espera <= '1';
					 cuenta <= (others => '0');
				 else
					 sensor_disp <= '1';
					 cuenta <= cuenta+1;
				 end if;
				 
			 --distancia
			 elsif eco_pasado = '0' and eco_sinc = '1' then
				 cuenta <= (others => '0');
				 centimetros <= (others => '0');
				 centimetros_unid <= (others => '0');
				 centimetros_dece <= (others => '0');
			
			elsif eco_pasado = '1' and eco_sinc = '0' then
				 sal_unid <= centimetros_unid;
				 sal_dece <= centimetros_dece;
				digitounidad <= sal_unid;
				digitodecena <= sal_dece;
				
			 elsif cuenta = 2900-1 then
				 if centimetros_unid = 9 then
					 centimetros_unid <= (others => '0');
					 centimetros_dece <= centimetros_dece + 1;
				 else
					centimetros_unid <= centimetros_unid + 1;
				 end if;
				 centimetros <= centimetros + 1;
				 cuenta<= (others => '0');
				 
				 if centimetros = 3448 then
				 espera <= '0';
				 end if;
				 
			 else
				 cuenta <= cuenta + 1;
			 end if;
				eco_pasado<= eco_sinc;
				eco_sinc <= eco_nsinc;
				eco_nsinc <= sensor_eco;
		 end if;


	end process;
	
	s_u <= digitounidad;

	s_d <= digitodecena;
	 
end a;