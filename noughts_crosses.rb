# Noughts and Crosses
# SovietKetchup
# v0.3.1

VALID = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

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
    if instance_variable_get("@#{spot}") == " "
      instance_variable_set("@#{spot}", side)
    else
      puts "\nNot a valid spot"
    end
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
carl_king_of_ducks = Player.new "X"
carter_with_banana = Player.new "O"

board.draw
board.place "a", "X"
board.draw
board.place "a", "O"
board.draw
