#Subproblems to solve: 
#   Game is one big loop that keeps asking for user input, interchanging between x and o 
#   Create a board that is updated with the new moves each round
#        #display method runs after each turn 
#   Get user input for what position they want to play
#       Name each "box" in the tictactoe grid and change the value depending on what the user inputs 
#   Create a stopping condition to end the game when a play has 3 in a row 
#       each box in a row/column/diagonal == x || o
#   For fun: enter names for x player and 0 player 

#Potential classes: 
#   player move/gameboard manipulation 
#   game round

#Potential instance variable
#   player choice
#   End of game/announcing winner 

# ------- Project Code ------- 

#Constants needed throughout the game  
$board = ['','_','_','_','_','_','_',' ',' ',' ']
$played = [0,1,2,3,4,5,6,7,8,9]
$move_count = 0
$game_end = false;

# Class game gives instructions and displays the board 
class Game
  def self.intro
    
    puts "\n\nHello and welcome to tictactoe!"
    puts "\n|_1_|_2_|_3_"
    puts "|_4_|_5_|_6_"
    puts "| 7 | 8 | 9 "
    puts "\nThe rules are simple: get three in a row (or column or diagonal) and you win! 
  To make your selection, type the number of the box you 
  wish to place your marker. If you choose an invalid box, 
  you will be prompted to re-enter your selection. You can 
  only choose a box that is empty. " 
  new_player()
  end 

  def self.display
    puts "|_#{$board[1]}_|_#{$board[2]}_|_#{$board[3]}_
|_#{$board[4]}_|_#{$board[5]}_|_#{$board[6]}_
| #{$board[7]} | #{$board[8]} | #{$board[9]} "
  end

  def self.new_player
    puts "\nThe player whose birthday is next will go first and have the marker 'O'"
    puts "Player 1, enter your name:"
    get_player1 = gets.chomp
    player1 = Player.new(get_player1, 'O')

    puts "\nPlayer 2's marker will be 'X'"
    puts "Player 2, enter your name:"
    get_player2 = gets.chomp
    player2 = Player.new(get_player2, 'X')

    until $game_end == true  
      player1.turn(player1)
      $game_end ? break : player2.turn(player2)
    end 

  end 
end 

# Module NewPlayer creates and store player name and marker (X or O)

class Player < Game 
  def initialize (name, marker)
    @name = name
    @marker = marker
  end

  def name
    @name
  end 

  def marker
    @marker
  end 

# turn method gets player moves
  def turn(player)
    puts "\n|_1_|_2_|_3_"
    puts "|_4_|_5_|_6_"
    puts "| 7 | 8 | 9 "
    move()
    
  end 
  
  def move
    puts "\n#{self.name}, what is your move?"
    choice = gets.chomp.to_i
    if choice > 9 || choice < 1
      puts 'Invalid move. Please try again.'
      move()
    elsif $board[choice] == 'X' || $board[choice] == 'O'
      puts 'Invalid move. Please try again.'
      move()
    else
      add_to_board(choice)
    end 
    
  end 

  def add_to_board(choice)
    $move_count += 1
    $board[choice] = self.marker
    $played[choice] = self.marker
    Game.display
    completed_game()
  end  

  def completed_game
#cat's game 
    if $move_count == 9
      $game_end = true;
      puts "No one wins; cat's game"
#winning conditions horizontals
    elsif ($played[1] == $played[2] && $played[2] == $played[3]) || ($played[4] == $played[5] && $played[5] == $played[6]) || ($played[7] == $played[8] && $played[8] == $played[8])
        puts "#{self.name} wins!"
        $game_end = true;
#winning conditions diagonals
    elsif ($played[1] == $played[5] && $played[5] == $played[9]) || ($played[3] == $played[5] && $played[5] == $played[7])
      puts "#{self.name} wins!"
      $game_end = true;
#winning conditions verticals
    elsif ($played[1] == $played[4] && $played[4] == $played[7]) || ($played[2] == $played[5] && $played[5] == $played[8]) || ($played[3] == $played[6] && $played[6] == $played[9])
      puts "#{self.name} wins!"
      $game_end = true;
#otherwise, carry on 
    else 
      $game_end = false;
    end
  end 
end  

# Commands to run the game 
Game.intro




