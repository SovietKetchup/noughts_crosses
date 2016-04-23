# Noughts and crosses
# SovietKetchup
# v0.2.0

X = "X"; O = "O"

# The board the game is played on
class Board
  # Create a board with each spot blank
  def initialize
    @a = " "; @b = " "; @c = " "
    @d = " "; @f = " "; @e = " "
    @g = " "; @h = " "; @i = " "
  end

  # Draw the board with each spot placed in
  def draw
    puts " #{@a} | #{@b} | #{@c} \n --------- \n #{@d} | #{@e} | #{@f} \n --------- \n #{@g} | #{@h} | #{@i} \n\n"
  end

  # Place a peice on the board
  def place spot, peice
    instance_variable_set("@#{spot}", peice)
  end

end

# A player, either X or O
class Player
  # Choose X or O
  def initialize side
    @side = side
  end

  # Make the players move
  def take_turn
  end

  # Check if player has won
  def won?
  end

end

x = Board.new
x.draw

x.place("a", X)
x.draw
