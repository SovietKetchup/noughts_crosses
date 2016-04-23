# Noughts and crosses
# SovietKetchup
# v0.1.0

X = "X"; O = "O"

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
  def place peice, spot
      if spot == "a"
        @a = peice
      elsif spot == "b"
        @b = peice
      elsif spot == "c"
        @c = peice
      elsif spot == "d"
        @d = peice
      elsif spot == "e"
        @e = peice
      elsif spot == "f"
        @f = peice
      elsif spot == "g"
        @g = peice
      elsif spot == "h"
        @h = peice
      elsif spot == "i"
        @i = peice
      end
  end

end

x = Board.new
x.draw

x.place(X, "i")
x.draw
