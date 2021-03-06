/*
---------------------------------------------------------------
| simple tic-tac-tow game in command line					  |
| it has loops and subroutine's for easyer reading	    	  |
| and structure						   	   	   	   	   	      |
|															  |
| created 11/2017 by james heath							  |
|															  |
---------------------------------------------------------------
*/

#include <iostream>
using namespace std;

// setup variables

char move;
int win = 0;
char playerTurn = 'o';
int numOfLoop = 0;
char grid1 = '1';
char grid2 = '2';
char grid3 = '3';
char grid4 = '4';
char grid5 = '5';
char grid6 = '6';
char grid7 = '7';
char grid8 = '8';
char grid9 = '9';

void board(){
	// build current game board
	system("cls");
	
	if (playerTurn == 'o'){cout << "PLAYER ONE o / player two x" << endl;}
	if (playerTurn == 'x'){cout << "player one o / PLAYER TWO x" << endl;}
		
	cout << endl;
	cout << grid1 << "|" << grid2 << "|" << grid3 << endl;
	cout << "-+-+-" << endl;
	cout << grid4 << "|" << grid5 << "|" << grid6 << endl;
	cout << "-+-+-" << endl;
	cout << grid7 << "|" << grid8 << "|" << grid9 << endl << endl;

}

int checkwin (){
	// check win condition
	if (grid1 == grid2){if (grid2 == grid3){return 1;}}
	if (grid4 == grid5){if (grid5 == grid6){return 1;}}
	if (grid7 == grid8){if (grid8 == grid9){return 1;}}
	if (grid1 == grid4){if (grid4 == grid7){return 1;}}
	if (grid2 == grid5){if (grid5 == grid8){return 1;}}
	if (grid3 == grid6){if (grid6 == grid9){return 1;}}
	if (grid1 == grid5){if (grid5 == grid9){return 1;}}
	if (grid3 == grid5){if (grid5 == grid7){return 1;}}
	if (numOfLoop == 8){return 1;}
	numOfLoop++;
return 0;

}

int main() {
	
	board();
	
	bool valid = (false);
	bool massage = (true);
	
	do {
	
		if (playerTurn == 'x'){cout << "player (x) choose a square";}
		if (playerTurn == 'o'){cout << "player (o) choose a square";}
		
		do {
		
			cin >> move;
			
			// test if move is valid and place mark if it is.
			if (move == '1' && grid1 == '1'){grid1 = playerTurn; valid = (true); massage = (false);}
			if (move == '2' && grid2 == '2'){grid2 = playerTurn; valid = (true); massage = (false);}
			if (move == '3' && grid3 == '3'){grid3 = playerTurn; valid = (true); massage = (false);}
			if (move == '4' && grid4 == '4'){grid4 = playerTurn; valid = (true); massage = (false);}
			if (move == '5' && grid5 == '5'){grid5 = playerTurn; valid = (true); massage = (false);}
			if (move == '6' && grid6 == '6'){grid6 = playerTurn; valid = (true); massage = (false);}
			if (move == '7' && grid7 == '7'){grid7 = playerTurn; valid = (true); massage = (false);}
			if (move == '8' && grid8 == '8'){grid8 = playerTurn; valid = (true); massage = (false);}
			if (move == '9' && grid9 == '9'){grid9 = playerTurn; valid = (true); massage = (false);}
		
			if (massage == (true)){cout << "invalid move, pick again";}
			
		} while (valid == false);
	   	   	
		// swap players turn
		if (playerTurn == 'o'){playerTurn = 'x';}
		else {playerTurn = 'o';}
		
		// reset true false loops and repost game board
		valid = (false);
		massage = (true);  
		board();
		// check for win
		win = checkwin();

	} while (win == 0);
	
	// announce winner
	// note the turn has swapped so who ever the last turn was is the winner.
	if (playerTurn == 'x'){cout << "player o wins";}
	if (playerTurn == 'o'){cout << "player x wins";}
	
return 0;
}

