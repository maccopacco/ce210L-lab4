-- Author: Max Dreher 
-- Last Modified: 5/11/2021
-- Purpose: use the DE10-Lite 7-segment LED displays and demonstrate knowledge of 
-- VHDL to implement two hex_to_7seg


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab4_two_digits IS
   PORT( SW	    :IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX4   :OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
         HEX5   :OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		 );
END lab4_two_digits;

ARCHITECTURE two_dig OF lab4_two_digits IS

   COMPONENT hex_to_7seg_sop
	   PORT( S	  :IN	   STD_LOGIC_VECTOR(3 DOWNTO 0);
            HEX  :OUT   STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
   END COMPONENT;
	
	COMPONENT hex_to_7seg_pos
	   PORT( S	  :IN	   STD_LOGIC_VECTOR(3 DOWNTO 0);
            HEX  :OUT   STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
   END COMPONENT;
	
 
BEGIN
   U0 : hex_to_7seg_sop port map (SW(9 DOWNTO 6), HEX5);
	U1 : hex_to_7seg_pos port map (SW(3 DOWNTO 0), HEX4);
END two_dig;