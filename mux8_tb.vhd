library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux8_tb is
end entity;

architecture mux8_tb_arch of mux8_tb is
  component mux8
    port (
      a   : in std_logic_vector (7 downto 0);
      b   : in std_logic_vector (7 downto 0);
      c   : in std_logic_vector (7 downto 0);
      d   : in std_logic_vector (7 downto 0);
      e   : in std_logic_vector (7 downto 0);
      f   : in std_logic_vector (7 downto 0);
      g   : in std_logic_vector (7 downto 0);
      h   : in std_logic_vector (7 downto 0);
      sel : in std_logic_vector (2 downto 0);
      o   : out std_logic_vector (7 downto 0)
    );
  end component;
  
  signal a, b, c, d, e, f, g, h : std_logic_vector (7 downto 0);
  signal o : std_logic_vector (7 downto 0);
  signal sel : std_logic_vector (2 downto 0);
begin
  uut : mux8 port map (a, b, c, d, e, f, g, h, sel, o);
  process
  begin
    a <= "00000001";
    b <= "00000010";
    c <= "00000011";
    d <= "00000100";
    e <= "00000101";
    f <= "00000110";
    g <= "00000111";
    h <= "00001000";
    sel <= "000";
    wait for 2 ns;

    sel <= "010";
    wait for 2 ns;
    sel <= "111";
    wait for 2 ns;
    sel <= "001";
  end process;
end architecture;

