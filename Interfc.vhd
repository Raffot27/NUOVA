library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Interfc is
port (SW : in unsigned(7 downto 0);
      KEY : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
		HEX0, HEX1, HEX2, HEX3 : out unsigned(6 downto 0);
		LEDR : out std_logic_vector(0 downto 0)
		);
end Interfc;

architecture struct of Interfc is

component Reaction_timer
port (clk	: in std_logic;
		ingresso : in unsigned( 7 downto 0);
		reset, alt: in std_logic;
	   led : out std_logic;	
		segmenti0, segmenti1, segmenti2, segmenti3 : out unsigned (6 downto 0)		
		);
end component;

begin

Reazione: Reaction_timer port map(CLOCK_50, SW, KEY(0), KEY(3), LEDR(0), HEX0, HEX1, HEX2, HEX3 );

end struct;