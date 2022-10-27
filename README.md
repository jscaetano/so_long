This a project called so_long for 42 School.
======

The goal is to make a small 2d game using the "MinilibX" library, provided by the school.

The game consists of a 2d map, where the player can move up, down, and to the sides, and its goal is to collect every collectible then escape through the exit.

The program must talke as a parameter a map file in .ber format.

The map must be composed of:
"0" for an empty space, (at least one)
"1" for a wall, (at least one)
"C" for a collectible, (at least one)
"E" for a map exit, (only one)
"P" for the player’s starting position. (only one)

I also used "F" to represent the enemys position on the map.

The map must be rectangular.
The map must be closed/surrounded by walls.
There must be a valid path in the map for both the collectibles and the exit.

This is the project with the bonus, so some of the sprites are animated, and the current number of movements is displayed right on the window, and if the map has an enemy, the player loses when they touch it.

The maps folder contains a small and a big map, and some invalid maps for testing.

The images folder contains all the sprites i used.

run 'make r' to start the game with the small map.

run 'make r2' to start the game with the big map.

The full subject was added to the root of the repository.
