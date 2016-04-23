# Noughts and crosses
# SovietKetchup
# v0.1.0

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
    # if spot == "a"
    #   @a = peice
    # elsif spot == "b"
    #   @b = peice
    # elsif spot == "c"
    #   @c = peice
    # elsif spot == "d"
    #   @d = peice
    # elsif spot == "e"
    #   @e = peice
    # elsif spot == "f"
    #   @f = peice
    # elsif spot == "g"
    #   @g = peice
    # elsif spot == "h"
    #   @h = peice
    # elsif spot == "i"
    #   @i = peice
    # end
    instance_variable_set("@#{spot}", peice)
  end

end

# A player, either X or O
class Player
  # Choose X or O
  def initialize side
    @side = side
  end

end

x = Board.new
x.draw

x.place("a", X)
x.draw
