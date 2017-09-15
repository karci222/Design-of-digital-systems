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

ARCHITECTURE sim_behav OF debounce IS

BEGIN
	db_level <= sw;
	db_tick <= '1';
END sim_behav;

