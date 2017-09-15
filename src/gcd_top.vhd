-- -----------------------------------------------------------------------------
--
--  Title      :  Implementation of the GCD with debouncer
--             :
--  Developers :  Jens Sparsø, Rasmus Bo Sørensen and Mathias Møller Bruhn
-- 		      :
--  Purpose    :  This design instantiates a debouncer and an implementation of GCD
--             :
--  Revision   :  02203 fall 2017 v.5.0
--
-- -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY gcd_sys IS
    PORT (clk:      IN std_logic;				   -- The clock signal.
          reset:    IN std_logic;				   -- Reset the module.
          req:      IN std_logic;				   -- Input operand / Start computation.
          AB:       IN unsigned(15 downto 0);	   -- Bus for A and B operands.
          ack:      OUT std_logic;			       -- Last input received / Computation is complete.
          C:        OUT unsigned(15 downto 0));    -- The result.
END gcd_sys;


ARCHITECTURE fsmd_io OF gcd_sys IS

	 COMPONENT debounce
			PORT (clk	   : IN std_logic;
					reset	   : IN std_logic;
					sw		   : IN std_logic;
					db_level : OUT std_logic;
					db_tick	: OUT std_logic
					);
	 END COMPONENT;

    COMPONENT gcd
        PORT (clk	  : IN std_logic;				-- The clock signal.
              reset : IN std_logic;				    -- Reset the module.
              req	  : IN std_logic;				-- Input operand / Start computation.
              AB	  : IN unsigned(15 downto 0);	-- Bus for A and B operands.
              ack	  : OUT std_logic;				-- Input received / Computation is complete.
              C	  : OUT unsigned(15 downto 0)	    -- The result.
             );
    END COMPONENT;

    SIGNAL db_req : std_logic;

BEGIN

    u1 : debounce PORT MAP (clk=>clk, reset=>reset, sw=>req, db_level=>db_req, db_tick=>open);
    u2 : gcd PORT MAP (clk=>clk,  reset=>reset, req=>db_req, AB=>AB, ack=>ack, C=>C);

END fsmd_io;
