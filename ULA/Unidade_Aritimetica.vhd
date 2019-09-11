--Exemplo de unidade aritmÃƒÆ’Ã‚Â©tica.

entity Unidade_Aritimetica is
	port(
		A, B	:	in integer range 0 to 15;
		OPCODE:	in bit_vector(1 downto 0);
		F		:	out integer range 0 to 15
	);
 end entity;
 
 architecture main of Unidade_Aritimetica is
 begin
	with OPCODE select
	F <= A + 1 when "00", -- todo vetor em aspas dupla.
		  A - 1 when "01",
		  A + B when "10",
		  A - B when "11"; -- aqui poderia ser colocado others = "11"
		  
--	F <= A + 1 when OPCODE = "00" else
--		  A - 1 when OPCODE = "01" else
--		  A + B when OPCODE = "10" else
--		  A - B;
  end architecture;
  