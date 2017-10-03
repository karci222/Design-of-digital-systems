-- -----------------------------------------------------------------------------
--
--  Title      :  Environment for the GCD module
--             :
--  Developers :  Jens Sparsø, Rasmus Bo Sørensen and Mathias Møller Bruhn
--             :
--  Purpose    :  This design is an environment for the GCD module. It provide
--             :  input signals to a GCD module and collects the result of a
--             :  computation. It should be connected to a GCD module only in a
--             :  testbench.
--             :
--  Revision   : 02203 fall 2017 v.5.0
--
-- -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

--------------------------------------------------------------------------------
-- Entity declaration for the environment. It mirrors the entity declaration for
-- the GCD module so that they can be connected.
--------------------------------------------------------------------------------

ENTITY env IS
   GENERIC(
      period: TIME := 10 ns);
   PORT(
      clk:   OUT std_logic;             -- The clock signal.
      reset: IN std_logic;              -- Reset the module.
      req:   OUT std_logic;             -- Start computation.
      AB:    OUT unsigned(15 downto 0); -- The two operands. One at at time
      ack:   IN std_logic;              -- Computation is complete.
      C:     IN unsigned(15 downto 0)); -- The result.
END env;

--------------------------------------------------------------------------------
-- Behaviour model of the environment. It applies operands and the "req" signal
-- to a GCD module and when the computation is complete, it collects the result.
--------------------------------------------------------------------------------

ARCHITECTURE behaviour OF env IS
    -- This type will indicate the state of the statemachine.
    TYPE StateType IS (INPUT_A, DONE_A, INPUT_B, DONE_ALL);

    -- Two signals to hold states.
    SIGNAL current_state, next_state: StateType;

    -- Result register.
    SIGNAL R: unsigned(15 downto 0);

    -- Enable signal for the result register.
    SIGNAL ld_R: std_logic;

    -- Internal clock signal
    SIGNAL clk_gen : std_logic := '0';

BEGIN
    -- Combinatorial part of the statemachine. It is responsible for the
    -- computation of the next state. It must be sensitive to the state
    -- and all inputs used to compute the next state.
    PROCESS (current_state, ack)
    	TYPE Operands IS ARRAY (0 TO 4) OF NATURAL;
      -- Change numbers here if you what to run different tests
    	VARIABLE a_Operands : Operands := (91, 32768, 49, 29232, 25);
    	VARIABLE b_Operands : Operands := (63,   272, 98,   488,  5);
		VARIABLE c_results  : Operands := ( 7,    16, 49,     8,  5);
    	VARIABLE test_number : INTEGER := 0;
    BEGIN
        CASE current_state IS

            WHEN INPUT_A =>
                req  <= '1';
                AB   <= TO_UNSIGNED(a_Operands(test_number),AB'length);
                                               -- The a operant is converted to a std_logic_vector

                IF ack = '0' THEN              -- wait until finish signal ack is one
                    next_state <= INPUT_A;
                ELSE                           -- then set next_state to DONE
                    next_state <= DONE_A;
                END IF;

            WHEN DONE_A =>
                req  <= '0';                   -- Phase 3 of handshaking protocol.
                AB   <= (others => 'X');       -- remove A

                IF ack = '1' THEN              -- wait until GCD module finishes the
                    next_state <= DONE_A;      -- handshake protocol,
                ELSE                           -- then start a new computation.
                    next_state <= INPUT_B;
                END IF;

           WHEN INPUT_B =>
                req  <= '1';
                AB   <= TO_UNSIGNED(b_Operands(test_number),AB'length);
                                               -- The b operant is converted to a std_logic_vector
                ld_R <= '1';                   -- Enable result register.

                IF ack = '0' THEN              -- wait until finish signal ack is one
                    next_state <= INPUT_B;
                ELSE                           -- then set next_state to DONE
                    next_state <= DONE_ALL;
                END IF;

            WHEN DONE_ALL =>
                req  <= '0';                   -- Phase 3 of handshaking protocol.
                AB   <= (others => 'X');       -- remove B
                ld_R <= '0';                   -- Disable result register.
				assert R = TO_UNSIGNED(c_results(test_number),C'length) report "Wrong result!" severity failure;
                IF ack = '1' THEN              -- wait until GCD module finishes the
                    next_state <= DONE_ALL;      -- handshake protocol,
                ELSE                           -- then start a new computation.
                    IF test_number < 4 THEN
                    	test_number := test_number + 1;
                    ELSE
                    	test_number := 0;
						report "Test passed" severity failure;
                    END IF;
                    next_state <= INPUT_A;
                END IF;

        END CASE;
    END PROCESS;

    -- This process assigns next_state to current_state. It implements the
    -- state holding registers in the statemachine.
    PROCESS(clk_gen, ld_R, reset)
    BEGIN
        IF rising_edge(clk_gen) THEN
            IF ld_R = '1' THEN
                R <= C;
            END IF;

            IF reset = '1' THEN
                current_state <= INPUT_A;         -- Reset to initial state
            ELSE
                current_state <= next_state;      -- go to next_state
            END IF;
        END IF;
    END PROCESS;

    -- Clock generation (simulation use only)
    PROCESS
    BEGIN
        clk_gen <= '1', '0' AFTER period/2;
        WAIT FOR period;
    END PROCESS;
    clk <= clk_gen;

END behaviour;
