library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter2 is
  port (
    clk : in std_logic;
    rst : in std_logic;
    o   : out std_logic_vector (1 downto 0)
  );
end entity;

architecture counter2_arch of counter2 is
  signal value : std_logic_vector (1 downto 0);
begin
  process (clk)
  begin
    if rst = '1' then
      value <= (others => '0');
    elsif rising_edge(clk) then
      value <= value + 1;
    end if;
    o <= value;
  end process;
end architecture;

