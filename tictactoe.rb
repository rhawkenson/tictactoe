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

puts "Hello and welcome to tictactoe!"
puts "|_A_|_B_|_C_"
puts "_1_|___|___|___"
puts "_2_|___|___|___"
puts "_3_|   |   |   "
puts "The rules are simple: get three in a row and you win! 
To make your selection, type the letter and number 
of the box you wish to place your marker. If you choose 
and invalid box, you will be prompted to re-enter your 
information. Make sure you enter letter then number, such 
as 'A1'. You can only choose a box that is empty. "

puts "The player whose birthday is next will go first and be the 'O'"

class Player
  attr_reader :name
  def initialize(name, symbol)
    @name = name 
    @symbol = symbol
  end 
end 

puts "Player 1, please enter your name:"
name1 = gets.chomp
player1 = Player.new(name1, "O")

puts "Player 2, please enter your name:"
name2 = gets.chomp 
player1 = Player.new(name2, "X")

class GameBoard 
  def initialize(move, x_o)
    @move = move
    @x_o = x_o
  end 
  a1 = @x_o
  a2 = "_"
  a3 = "_"
  b1 = "_"
  b2 = "_"
  b3 = "_"
  c1 = "_"
  c2 = "_"
  c3 = "_"
  puts " | A | B | C "
  puts "1|_#{a1}_|_#{b1}_|_#{c1}_"
  puts "2|_#{a2}_|_#{b2}_|_#{c2}_"
  puts "3| #{a3} | #{b3} | #{c3} "
end 



class Move < Player
  def initialize(player_choice)
    move_arr = player_choice.split(//)
    @column = move_arr[0].downcase
    @row = move_arr[1].to_i
  end 

  def add_to_board
    if @column == 'a'
      if @row == 1
        move = 'a1'
      elsif @row == 2
        move = 'a2' 
      elsif @row == 3
        move = 'a3'
      end
    elsif @column == 'b'
      if @row == 1
        b1 = @symbol
      elsif @row == 2
        b2 = @symbol
      elsif @row == 3
        b3 = @symbol
      end
    elsif @column == 'c'
      if @row == 1
        c1 = @symbol
      elsif @row == 2
        c2 = @symbol
      elsif @row == 3
        c3 = @symbol
      end
    end
    GameBoard.new(move, @symbol)
  end 
end 

puts "Player, make your selection: "
firstmove = gets.chomp
playermove = Move.new(firstmove)