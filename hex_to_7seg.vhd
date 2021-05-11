-- Add a useful header
-- Change names of the file, entity, and architecture

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hex_to_7seg IS
   PORT( S   :IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
         HEX :OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE CANONICAL_SOP of hex_to_7seg IS

   ALIAS S3 : STD_LOGIC is S(3);
   ALIAS S2 : STD_LOGIC is S(2);
   ALIAS S1 : STD_LOGIC is S(1);
   ALIAS S0 : STD_LOGIC is S(0);
   ALIAS a : STD_LOGIC is HEX(0);
   ALIAS b : STD_LOGIC is HEX(1);
   ALIAS c : STD_LOGIC is HEX(2);
   ALIAS d : STD_LOGIC is HEX(3);
   ALIAS e : STD_LOGIC is HEX(4);
   ALIAS f : STD_LOGIC is HEX(5);
   ALIAS g : STD_LOGIC is HEX(6);   

BEGIN
   a <= not(  ); -- put your equations inside the not() operations
   b <= not(  );
   c <= not(  );
   d <= not(  );
   e <= not(  );
   f <= not(  );
   g <= not(  );
END CANONICAL_SOP;