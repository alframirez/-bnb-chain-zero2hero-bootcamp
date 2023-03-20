# Author
Alfredo Ramirez

# Tasks
How would you solve the problems of:
- Cheating
- Ensuring agreement about the state of the system
- Communication problems (timeouts)
- How to decide who should take the next turn
- How to allow the correct people to join the game

# Solving the problems posed in monopoly game

## Cheating

- A network of nodes is established where the information is stored in a distributed way.
- A smart contract is established with the rules of the game that can be modified per board.
- To modify the rules of the game each player participating in the board must sign the modification agreement, otherwise the modification will not be carried out and the game will be played with the default rules.
- In case the nodes find corrupted information in any other node, it will be replaced within the network.

## Ensuring agreement about the state of the system

- Transparency of the system state can be maintained by allowing each player to see transparently how the order of contract calls has been through a block explorer.

## Communication problems (timeouts):

- Players have the possibility of direct and global communication to reach consensus on decisions during the game.
- If a player does not perform any action for a pre-determined period of time, his turn is skipped.

## Decide who takes the next turn:

- At the start of the game the players can agree on the turn order or they can ask for a random selection.
- After agreeing on the turn order they already know who is coming to play and who is currently playing.

## How to allow the correct people to join the game:

- Each player must go through an anti-bot approval period.
- Each approved player must have an exclusive and non-transferable nft to verify that he was approved.