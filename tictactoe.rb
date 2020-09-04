#Subproblems to solve: 
#   Game is one big loop that keeps asking for user input, interchanging between x and o 
#   Create a board that is updated with the new moves each round
#        #currentboard method runs after each turn 
#   Get user input for what position they want to play
#       Name each "box" in the tictactoe grid and change the value depending on what the user inputs 
#   Create a stopping condition to end the game when a play has 3 in a row 
#       each box in a line == x || o
#   For fun: enter names for x player and 0 player 

#Potential classes: 
#   player move/gameboard manipulation 
#   game round

#Potential instance variable
#   player choice
#   End of game/announcing winner 

puts "\n\nHello and welcome to tictactoe!"
puts "   |_A_|_B_|_C_"
puts "_1_|___|___|___"
puts "_2_|___|___|___"
puts "_3_|   |   |   "
puts "\nThe rules are simple: get three in a row and you win! 
To make your selection, type the letter and number 
of the box you wish to place your marker. If you choose 
and invalid box, you will be prompted to re-enter your 
information. Make sure you enter letter then number, such 
as 'a1'. You can only choose a box that is empty. "

puts "\nThe player whose birthday is next will go first and be the 'O'"


