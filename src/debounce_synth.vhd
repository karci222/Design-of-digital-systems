--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.NUMERIC_STD.ALL;

--ENTITY debounce IS
--    PORT ( clk:			IN  STD_LOGIC;
--           reset:		IN  STD_LOGIC;
--           sw:			IN  STD_LOGIC;
--           db_level:	OUT  STD_LOGIC;
--           db_tick :	OUT  STD_LOGIC);
--END debounce;

ARCHITECTURE Behavioral OF debounce IS
	CONSTANT	N: integer:=20;  -- filter of 2^N * 10ns = 10ms
	-- N should be set to 20 when synthesizing and 2 when simulating.
	TYPE state_type IS (zero, wait0, one, wait1);
	SIGNAL state_reg, state_next: state_type;
   	SIGNAL q_reg, q_next: unsigned(N-1 downto 0);
   	SIGNAL q_load, q_dec, q_zero: 	std_logic;
	SIGNAL sw_reg1, sw_reg2: 		std_logic;
BEGIN

	PROCESS(clk)
	BEGIN
		IF reset='1' THEN
			sw_reg2 <= '0';
			sw_reg1 <= '0';
		ELSIF rising_edge(clk) THEN
			sw_reg2 <= sw_reg1;
			sw_reg1 <= sw;
		END IF;
	END PROCESS;

	-- FSMD state & data registers
	PROCESS(clk,reset)
	BEGIN
		IF reset='1' THEN
			state_reg <= zero;
			q_reg <= (OTHERS=>'0');
		ELSIF (rising_edge(clk)) THEN
			state_reg <= state_next;
			q_reg <= q_next;
		END IF;
	END PROCESS;

	-- FSMD data path (counter) next-state logic
	q_next <= 	(OTHERS=>'1')	WHEN q_load='1'	ELSE
				q_reg - 1 		WHEN q_dec='1'	ELSE
				q_reg;
	q_zero <= 	'1' 			WHEN q_next=0 	ELSE 
				'0';

	-- FSMD control path next-state logic
	PROCESS(state_reg,sw_reg2,q_zero)
	BEGIN
		q_load <= '0';
		q_dec <= '0';
		db_tick <= '0';
		state_next <= state_reg;
		CASE state_reg IS
			WHEN zero =>
				db_level <= '0';
				IF sw_reg2='1' THEN
					state_next <= wait1;
					q_load <= '1';
				END IF;
			WHEN wait1=>
				db_level <= '0';
				IF sw_reg2='1' THEN
					q_dec <= '1';
					IF q_zero='1' THEN
						state_next <= one;
						db_tick <= '1';
					END IF;
				ELSE -- sw_reg2='0'
					state_next <= zero;
				END IF;
			WHEN one =>
				db_level <= '1';
				IF sw_reg2='0' THEN
					state_next <= wait0;
					q_load <= '1';
				END IF;
			WHEN wait0=>
				db_level <= '1';
				IF sw_reg2='0' THEN
					q_dec <= '1';
					IF q_zero='1' THEN
						state_next <= zero;
					END IF;
				ELSE -- sw_reg2='1'
					state_next <= one;
				END IF;
		END CASE;
   END PROCESS;

END Behavioral;

