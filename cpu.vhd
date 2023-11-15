library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cpu is
  port (
    data_in : in std_logic_vector (7 downto 0)
  );
end entity;

architecture cpu_arch of cpu is
  component reg8
    port (
      clk : in std_logic;
      rst : in std_logic;
      load : in std_logic;
      input : in std_logic_vector (7 downto 0);
      o : out std_logic_vector (7 downto 0)
    );
  end component;
  component mux8
    port (
    );
  end component;
  type reg_load_t is array (0 to 7) of std_logic;
  type reg_rst_t is array (0 to 7) of std_logic;
  type reg_input_t is array (0 to 7) of std_logic_vector (7 downto 0);
  type reg_out_t is array (0 to 7) of std_logic_vector (7 downto 0);

  signal reg_load : reg_load_t := (others => '0');
  signal reg_rst : reg_rst_t := (others => '0');
  signal reg_input : reg_input_t := (others => (others => '0'));
  signal clk : std_logic;

  signal reg_sel : std_logic_vector (2 downto 0);
  signal mux_out : std_logic_vector (7 downto 0);
begin
  process
  begin
    
  end process;
end architecture;

