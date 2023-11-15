library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter2_tb is
end entity;

architecture counter2_tb_arch of counter2_tb is
  component counter2
    port (
      clk : in std_logic;
      rst : in std_logic;
      o   : out std_logic_vector (1 downto 0)
    );
  end component;
  signal clk, rst : std_logic;
  signal o : std_logic_vector (1 downto 0);
begin
  uut : counter2 port map (clk, rst, o);

  process
  begin
    clk <= '0';
    wait for 1 ns;
    clk <= '1';
    wait for 1 ns;
  end process;

  process
  begin
    rst <= '1';
    wait for 2 ns;
    rst <= '0';
    wait;
  end process;
end architecture;

