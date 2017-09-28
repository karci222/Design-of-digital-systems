-- -----------------------------------------------------------------------------
--
--  Title      :  FSMD implementation of GCD
--             :
--  Developers :  Jens Sparsø, Rasmus Bo Sørensen and Mathias Møller Bruhn
-- 		       :
--  Purpose    :  This is a FSMD (finite state machine with datapath) 
--             :  implementation the GCD circuit
--             :
--  Revision   :  02203 fall 2017 v.4
--
-- -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY gcd IS
    PORT (clk:   IN std_logic;				   -- The clock signal.
          reset: IN std_logic;				   -- Reset the module.
          req:   IN std_logic;				   -- Input operand / Start computation.
          AB:    IN unsigned(15 downto 0);	-- The two operands.
          ack:   OUT std_logic;	
          C:     OUT unsigned(15 downto 0));	-- The result.
END gcd;

ARCHITECTURE FSMD OF gcd IS

TYPE state_type IS ( start, read_A,idle_A, read_b,  compare ,A_bigger_than_B, A_smaller_than_B,result ); -- Input your own state names

SIGNAL reg_a,next_reg_a,next_reg_b,reg_b : unsigned(15 downto 0);

SIGNAL state, next_state : state_type;


BEGIN

-- Combinatoriel logic

CL: PROCESS (req,AB,state,reg_a,reg_b,reset)
BEGIN
   next_state <= state;
   next_reg_a <= reg_a;
   next_reg_b <= reg_b;
   ack <= '0';
   C <= reg_b;
   CASE (state) IS

		when start =>
			if  req = '1' then
				next_state <= read_A;
		    else  
                -- C <= (others=>'0'); --optional
			end if;
		when read_A =>
		     if req ='1' then
			     next_reg_a <= AB;
			     ack <= '1';
			     next_state <= read_A;
			  else
			     next_state <= idle_A;
			  end if;
		when idle_A =>
		    if  req = '0' then
                ack <= '0';
                next_state <= idle_A;
			else 
			    next_state <= read_b;
		    end if;
		when read_b =>
		    
			    next_reg_b <= AB;
                next_state <= compare;
			
		when compare =>
		     
			if reg_A = reg_B then
			     next_state <= result;
			else 
				if reg_A > reg_B then
				next_state <= A_bigger_than_B;
				else
				next_state <= A_smaller_than_B;
				end if;
			end if;
		when A_bigger_than_B =>
                next_reg_a <= reg_a - reg_b;
                next_state <= compare;
		when A_smaller_than_B =>
                next_reg_b <= reg_b - reg_a;
                next_state <= compare;
		when result =>
                C <= reg_a;
                ack <= '1'; 
			if req = '0' then 
                next_state <= start;
            end if;
   END CASE;
   
END PROCESS CL;

-- Registers

seq: PROCESS (clk, reset)
BEGIN
       if reset = '1' then
            state <= start;
            reg_a <= (others => '0');
            reg_b <= (others => '0');
            
       elsif rising_edge(clk) then	
	-- on reset clean registers and get to the starting state	
	
            state <= next_state;
            reg_a <= next_reg_a;
            reg_b <= next_reg_b;

  end if;
END PROCESS seq;


END FSMD;