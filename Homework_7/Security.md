# Author
Alfredo Ramirez

# Security task
Look at the following contract, there are a number of vulnerabilities
and flaws. In your teams try to find all of the problems.
You do not need to fix any of the problems.

# Vulnerabilities
1. The import is being done and it is not used (line 3)
2. The prizeAmount variable is declared and never set a value (line 6)
3. The owner of the contract is not stored to restrict the functions (line 12)
4. num_players always increases, no matter that the previous condition is not met and the player is added (line 18)
5. The winnersPaid event is used but an empty value is sent to it (line 20)
6. The pickWinner function is public, so anyone could pick a winner (24)
7. (block.timestamp % 15 == 0) does not return a random number, instead it executes the function after 15 seconds have elapsed since the time of the last transaction block