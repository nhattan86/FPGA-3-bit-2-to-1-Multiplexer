library ieee;
use ieee.std_logic_1164.all;
entity mux2to13bit is
 port (A,B: in std_logic_vector ( 2 downto 0);
		 s: in std_logic;
		 Y: out std_logic_vector ( 2 downto 0));
end mux2to13bit;
Architecture T of mux2to13bit is
component mux2to1 is
 port (A,B: in std_logic;
		 s: in std_logic;
		 Y: out std_logic);
end component;
begin 
  m0: mux2to1 port map (A(0), B(0), s, Y(0));
  m1: mux2to1 port map (A(1), B(1), s, Y(1));
  m2: mux2to1 port map (A(2), B(2), s, Y(2));	 
end T;
    
library ieee;
use ieee.std_logic_1164.all;
entity mux2to1 is
 port (A,B: in std_logic;
		 s: in std_logic;
		 Y: out std_logic);
end mux2to1;
Architecture T of mux2to1 is
 begin
  process ( A,B,s)
   begin
	 if s = '0' then 
	    Y <= A;
	 else Y<= B;
	 end if;
  end process;
end T;
