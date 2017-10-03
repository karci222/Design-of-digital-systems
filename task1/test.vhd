-- -----------------------------------------------------------------------------
--
--  Title      :  Testbench for the GCD module
--             :
--  Developers :  Jens Sparsø, Rasmus Bo Sørensen and Mathias Møller Bruhn
--             :
--  Purpose    :  This design is a testbench for the GCD module. It instantiates
--             :  a GCD module, an environment. It checks results.
--             :  At the bottom of the file you will find a
--             :  configuration that will set the simulator to simulate the
--             :  specification architecture of the GCD module. Copy and modify
--             :  the configuration to simulate your own versions of the GCD
--             :  module.
--             :
--  Revision   :  02203 fall 2017 v.5.0
--
-- -----------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Standard testbench entity declaration. No inputs and no outputs.
--------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY testbench IS
END testbench;

--------------------------------------------------------------------------------
-- This testbench instantiates a GCD module, an environment and a clock. It
-- connects the three entities.
--------------------------------------------------------------------------------

ARCHITECTURE structure OF testbench IS

    COMPONENT env
        PORT (clk:         OUT std_logic;				-- The clock signal.
              reset:       IN std_logic;				-- Reset the module.
              req:         OUT std_logic;				-- Start computation.
              AB:          OUT unsigned(15 downto 0);	-- The two operands.
              ack:         IN std_logic;				-- Computation is complete.
              C:           IN unsigned(15 downto 0));	-- The result.
    END COMPONENT;

    COMPONENT GCD_sys
       PORT (clk:         IN std_logic;					-- The clock signal.
             reset:       IN std_logic;					-- Reset the module.
             req:         IN std_logic;					-- Start computation.
             AB:          IN unsigned(15 downto 0);		-- The two operands.
             ack:         OUT std_logic;				-- Computation is complete.
             C:           OUT unsigned(15 downto 0));	-- The result.
    END COMPONENT;

	-- Signals to interconnect components
    SIGNAL req, ack, clk, reset: std_logic;
    SIGNAL AB, C: unsigned(15 downto 0);

BEGIN
    -- assert reset, note that reset is active high
    reset <= '1', '0' after 110 ns;

    environment: env
        PORT MAP (clk, reset, req, AB, ack, C);

    GCD_module: GCD_sys
        PORT MAP (clk, reset, req, AB, ack, C);

END structure;
