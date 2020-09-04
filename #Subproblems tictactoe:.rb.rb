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


  
puts "\n\n\nHello and welcome to tictactoe!"
puts "   |_A_|_B_|_C_"
puts "_1_|___|___|___"
puts "_2_|___|___|___"
puts "_3_|   |   |   "

puts "The rules are simple: get three in a row and you win! 
To make your selection, type the letter and number 
of the box you wish to place your marker. If you choose 
and invalid box, you will be prompted to re-enter your information.
Make sure you enter letter then number, such as 'A1'
You can only choose a box that is empty. "

puts "\n\n\nThe player whose birthday is next will go first and be the 'O'"
puts "\nPlayer 1, enter your name:"
player1 = gets.chomp
puts "\nPlayer 2, you will be the X. Please enter your name:"
player2 = gets.chomp

gameplay = true
rounds = 1

a1 = '_'
a2 = '_'
a3 = ' '
b1 = '_'
b2 = '_'
b3 = ' '
c1 = '_'
c2 = '_'
c3 = ' '

def gameboard(arr)


if arr[0] == 'a'
if arr[1] == 1
  a1 = 'X'
elsif arr[1] == 2
  a2 = 'X'
elsif arr[1] == 3
  a3 = 'X'
end

elsif arr[0] == 'b'
if arr[1] == 1
  b1 = 'X'
elsif arr[1] == 2
  b2 = 'X'
elsif arr[1] == 3
  b3 = 'X'
end

elsif arr[0] == 'c'
if arr[1] == 1
  c1 = 'X'
elsif arr[1] == 2
  c2 = 'X'
elsif arr[1] == 3
  c3 = 'X'
end

else 
puts "You chose #{arr}"
end

puts "Your move was #{arr}"
puts " | A | B | C "
puts "1|_#{a1}_|_#{b1}_|_#{c1}_"
puts "2|_#{a2}_|_#{b2}_|_#{c2}_"
puts "3| #{a3} | #{b3} | #{c3} "
end 


while gameplay == true do
puts "\n#{player1} please make your selection: "
selection = gets.chomp
move_arr = selection.split(//)
move_arr[0] = move_arr[0].downcase
move_arr[1] = move_arr[1].to_i

if move_arr[0] == 'a' || move_arr[0] == 'b' || move_arr[0] == 'c' 
  if move_arr[1] > 0 && move_arr[1] < 4
    puts "you chose #{selection}"
    rounds += 1
    gameboard(move_arr)
    
    
  else
    puts "Please enter a valid move"
  end
else
  puts "Please enter a valid move"
end
end

