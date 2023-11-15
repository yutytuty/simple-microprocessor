library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is
  port (
    a : in std_logic_vector (7 downto 0);
    b : in std_logic_vector (7 downto 0);
    addsub : in std_logic;
    o : out std_logic_vector (7 downto 0)
  );
end entity;

architecture alu_arch of alu is
begin
  process (a, b, addsub)
  begin
    if addsub = '0' then
      o <= a + b;
    else
      o <= a - b;
    end if;
  end process;
end architecture;

