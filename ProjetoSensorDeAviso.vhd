library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ProjetoSensorDeAviso is
	 Port (clk: in STD_LOGIC;
		 -- Saidas para os Displays de 7 segmentos
		 unidades_7seg: out std_logic_vector(6 downto 0);
		 dezenas_7seg: out std_logic_vector(6 downto 0);
		 -- Saida dos dois motores, cada bit está ligado ao pino de um dos motores
		 s_motor: out std_logic_vector(1 downto 0);
		 
		 -- Entrada fictícia de distância usada em simulações
		 simuld: in unsigned(3 downto 0) := (others => '0');
		 --Sensor
		 TRIG_HC_SR04: out STD_LOGIC;
		 ECHO_HC_SR04: in STD_LOGIC
		 );
		 

end ProjetoSensorDeAviso;

architecture a of ProjetoSensorDeAviso is
    component ConversorBCD
	 port (num: in unsigned(3 downto 0) := (others => '0');
			 s_display: out std_logic_vector(6 downto 0)
		  );
	 end component;
	 
	 
	 component Medidor
	 port (clk: in STD_LOGIC;
		 sensor_disp: out STD_LOGIC;
		 sensor_eco: in STD_LOGIC;
		 s_u: out unsigned(3 downto 0) := (others => '0');
		 s_d: out unsigned(3 downto 0) := (others => '0')
		 );
	 end component;
	 
	 component MaquinaDeAlarme
	 port (clk: in STD_LOGIC;
		 dezena: in unsigned(3 downto 0) := (others => '0');
		 s_motor: out std_logic_vector(1 downto 0)
		 );
	 end component;
	 
	 signal unidade: unsigned(3 downto 0) := (others => '0');
	 signal dezena: unsigned(3 downto 0) := (others => '0');

	 signal saida_motor: std_logic_vector(1 downto 0);

begin
	
    medidor1: Medidor PORT MAP (clk, TRIG_HC_SR04, ECHO_HC_SR04, unidade, dezena);
	 conversor1: ConversorBCD PORT MAP (unidade, unidades_7seg);
	 conversor2: ConversorBCD PORT MAP (dezena, dezenas_7seg);
	 maquina1: MaquinaDeAlarme PORT MAP (clk, dezena, saida_motor);
	
	 s_motor <= saida_motor;
end a;