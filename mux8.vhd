library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux8 is
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
end entity;

architecture behave of mux8 is
begin
  process (sel)
  begin
    case sel is
      when "000" => o <= a;
      when "001" => o <= b;
      when "010" => o <= c;
      when "011" => o <= d;
      when "100" => o <= e;
      when "101" => o <= f;
      when "110" => o <= g;
      when "111" => o <= h;
      when others => o <= "00000000";
    end case;
  end process;
end architecture;

