library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity inst_reg is
  port (
    clk : in std_logic;
    rst : in std_logic;
    load : in std_logic;
    input : in std_logic_vector (8 downto 0);
    o : out std_logic_vector (8 downto 0)
  );
end entity;

architecture inst_reg_arch of inst_reg is
  signal inst : std_logic_vector (8 downto 0);
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        inst <= (others => '0');
      elsif load = '1' then
        inst <= input;
      end if;
    end if;

    o <= inst;
  end process;
end architecture;

