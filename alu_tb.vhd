library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu_tb is
end entity;

architecture alu_tb_arch of alu_tb is
  component alu
    port (
      a : in std_logic_vector (7 downto 0);
      b : in std_logic_vector (7 downto 0);
      addsub : in std_logic;
      o : out std_logic_vector (7 downto 0)
    );
  end component;
  
  signal a, b : std_logic_vector (7 downto 0);
  signal addsub : std_logic;
  signal o : std_logic_vector (7 downto 0);
begin
  uut : alu port map (a, b, addsub, o);
  process
  begin
    addsub <= '0';
    a <= "00001000";
    b <= "00011101";
    -- o should be 37
    wait for 2 ns;

    addsub <= '1';
    wait for 2 ns;
  end process;
end architecture;

