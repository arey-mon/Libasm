# PRINCIPAL COMMMANDS

. mov 
mov R0 R1 ; where R0 is opérandicible (copy stock) and R1 opérandesource (copy value)
\
. jmp : aller à l'adresse
\
. cmp : compare variables
\
. syscall
back up and check errors
returns 0 if success, -1 if error
\
. je : is setting variable = 0
\
. ret : quitte la procédure en cours
\
. inc || dec : increase || decrease
\
. push : indiquer une valeur ou une opérande qui sera ajoutée à la pile
\
. pop : récupère le contenu de la pile et le stocke dans le registre
\
. cl || al : used with mov to only affect 8 bits
\
. sub :
Subtracts source operand from destination operand and stores the result in the destination operand
\

# REGISTRES
[EAX] || [RAX] sont des registres généraux. EAX = 32 bits, RAX = 64 bits
\
[RAX] : registre général temporaire, 1er registre de ret
\
[RBX] : registre général enregistré, utilisé en option comme pointeur
\
[RSI] : adresse source, utilisé pour passer un 2è argument à une fonction
\
[RDI] : adresse de destination, utilisée pour passer le 1er argument
\
Les registres sont des espaces mémoires dans le coeur du processeur

# COMPILE COMMANDS
declare in your .s global function_name;
\
then select function_name as starting point of function;
\
make
\
gcc *.c *.h *.a
\

# DEBUG
gdb <exe>
\
break main
\
run
\ more : https://www.csee.umbc.edu/portal/help/nasm/nasm.shtml#gdb

# TEST CODE ONLINE
\
https://www.tutorialspoint.com/compile_assembly_online.php

