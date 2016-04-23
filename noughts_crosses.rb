# Noughts and Crosses
# SovietKetchup
# v0.5.1

# The board the game is played on
class Board
  # Create a board with each spot blank
  def initialize
    ('a'..'i').map{|spot| instance_variable_set("@#{spot}", " ")}
  end

  # Draw the board with each spot placed in
  def draw
    puts "\n #{@a} | #{@b} | #{@c} \n --------- \n #{@d} | #{@e} | #{@f} \n --------- \n #{@g} | #{@h} | #{@i} "
  end

  # Place a O or X on the board
  def place spot, side
    instance_variable_set("@#{spot}", side)
  end

end

# A player, either X or O
class Player
  # Choose X or O
  def initialize side
    @side = side
  end

  # Check if player has won
  def won?
  end

end

board = Board.new

# Functions for turn taking logic
def game board

  player = "X"
  rounds = 0
  a_win = false

  until a_win == true
    # Draw condition
    if rounds == 8
      a_win = true
      winner = "DRAW"
    end

    # Announcement Text
    puts "\nThis is round ##{rounds + 1}"
    puts "#{player}'s turn"

    board.draw




    # Change player
    if player == "X" then player = "O"
    else player = "X" end

    # Increment round counter
    rounds += 1

  end

  puts "GAME OVER :: #{winner}"

end

# Run the game
puts "The game will start with Xs"
game board
