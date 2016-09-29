/** @file main.cc
    @brief application file using the game and othello classes
    @author Brock Ferrell, documentation by Robin Kelby

*/

// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#include "game.h"
#include "othello.h"
using namespace main_savitch_14;


int main()
{
	Othello theGame;
	theGame.restart();
	theGame.play();
}
