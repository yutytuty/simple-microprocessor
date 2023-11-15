library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity reg8_tb is
end entity;

architecture reg8_tb_arch of reg8_tb is
  component reg8
    port (
      clk : in std_logic;
      rst : in std_logic;
      load : in std_logic;
      input : in std_logic_vector (7 downto 0);
      o : out std_logic_vector (7 downto 0)
    );
  end component;
  signal clk : std_logic;
  signal rst, load : std_logic;
  signal input : std_logic_vector (7 downto 0);
  signal o : std_logic_vector (7 downto 0);
begin
  uut : reg8 port map (clk, rst, load, input, o);
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
    load <= '0';
    wait for 2 ns;

    rst <= '0';
    load <= '1';
    input <= "01010101";
    wait for 2 ns;

    rst <= '1';
    load <= '0';
    wait for 2 ns;

    rst <= '0';
    load <= '1';
    input <= "11111111";
    wait for 2 ns;

    input <= "11110000";
    wait for 2 ns;

    rst <= '1';
    load <= '0';
    wait for 2 ns;

    rst <= '0';
    wait;
  end process;
end architecture;

