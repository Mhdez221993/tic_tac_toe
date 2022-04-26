# Tic Tac Toe

A game in which two players alternately put Xs and Os in compartments of a figure formed by two vertical lines crossing two horizontal lines and each tries to get a row of three Xs or three Os before the opponent does.
I'd like to point out that, this project is built in pure Ruby no packages, no Genfile needed.

![tic_tac_toe1](https://user-images.githubusercontent.com/67757001/165240349-0c77a83a-79b0-475d-b35f-6173ae6982b0.jpeg)

## Built With

- Ruby
- RSpec
- Unix shell

## Getting Started

To get a local copy up and running follow these simple example steps.

Go to https://github.com/srizzuto/tic_tac_toe/

1. Click on the code and copy the HTML code.
2. Use terminal to clone this repository on your local machine.
3. Run <code>git checkout -b your-branch-name</code>. Make your contributions.
4. Push your branch up to your forked repository.

## Running tests

To run the tests locally :

- First option : run the run_all_spec executable file to run all the tests at once.

   eg : `./run_all_spec` 

- Second option : run each file in the spec folder individualy.

   eg : `rspec ./spec/game_spec.rb` 


## Instructions

1) Open your terminal:
    - On Windows => <code>Win + R</code>
    - On Linux => <code>ctrl + alt + T</code>
    - On Mac => <code>Control + Option + Shift + T</code>

2) Go to the directory where the game is located, it will be the one where you cloned the repository. Execute the main.rb by typing:
    - <code>bin/main.rb</code>

3) Alright! You are ready to play! After the welcome message, both of you will be asked to insert your names:
    - Remember: You can't leave a player's name empty!

4) After the game assign you either if you'll be playing with 'X' or 'O' it's time to do your first move! You will do this by pressing a name between 1 and 9 and confirm the move by pressing Enter:
    - Every move you do will be displayed in the board, replacing the selected number for the player's sign ('X' or 'O')
    - The game won't allow you to put words or numbers outside the range between 1 and 9

5) Winning conditions:
    There are 8 approaches to win the game:
    - If one of the players manages to put three signs in a line (horizontally) (3)
    - If one of the players manages to put three signs in a line (vertically) (3)
    - If one of the players manages to put three signs in a line (over a diagonal) (2)

6) Tie conditions:
    - The game will declare a draw between the players if they run out of moves (9 total)

7) "I want to exit, how do I do this?"
    There are two ways to do this:
    - Going through the whole game, after the win, loss or draw the game will ask you if you want to play again, you can hit Y to replay or N to exit
    - If you want to leave inmediately, use <code>ctrl + C</code> and the game will be shutted down.


Have fun!

## Authors

👤 **Sebastian Rizzuto**

- GitHub: [@srizzuto](https://github.com/srizzuto)
- Twitter: [@sbstnrzzt](https://twitter.com/sbstnrzzt)
- LinkedIn: [Sebastian Rizzuto](https://www.linkedin.com/in/srizzuto/)


👤 **Moises Hernandez Coronado** 

- GitHub: [@Mhdez221993](https://github.com/Mhdez221993) 
- Twitter: [@MoisesH42060050](https://twitter.com/MoisesH42060050) 
- LinkedIn: [Moises Hernandez Coronado](https://www.linkedin.com/in/moises-hernandez-9bbb17145/) 

👤 **Safa Aballagh**

- GitHub: [@Safafa](https://github.com/safafa)
- Twitter: [@safa aballagh](https://twitter.com/Aballagh_S)
- LinkedIn: [Aballagh Safa](https://www.linkedin.com/in/aballaghsafa/)

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/srizzuto/bubble-sort/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- To my coding partner who helped me through all the work
- To my Stand Up Team who kept my morale up!
