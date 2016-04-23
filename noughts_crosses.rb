# Noughts and crosses
# SovietKetchup
# v0.2.0

VALID = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

# The board the game is played on
class Board
  # Create a board with each spot blank
  def initialize
    ('a'..'i').map{|l| instance_variable_set("@#{l}", " ")}
  end

  # Draw the board with each spot placed in
  def draw
    puts " #{@a} | #{@b} | #{@c} \n --------- \n #{@d} | #{@e} | #{@f} \n --------- \n #{@g} | #{@h} | #{@i} \n\n"
  end

  # Place a peice on the board
  def place spot, peice
    if valid?(spot)
      instance_variable_set("@#{spot}", peice)
    else
      puts "Not a valid spot"
    end
  end

  def valid? spot
    if instance_variable_get("@#{spot}") == " "
      True
    else
      False
    end
  end

end

# A player, either X or O
class Player
  # Choose X or O
  def initialize side
    @side = side

  end

  # Make the players move
  def take_turn spot
    puts "#{@side}'s turn."
  end

  # Check if player has won
  def won?
  end

end

board = Board.new

carl_king_of_ducks = Player.new "X"
carter_with_banana = Player.new "O"
