# Noughts and crosses
# SovietKetchup
# v0.1.0

class Board

  # Create a board with each spot blank
  def initialize
    @a = " "; @b = " "; @c = " "
    @d = " "; @f = " "; @e = " "
    @g = " "; @h = " "; @i = " "
  end

  # Draw the board with each spot placed in
  def draw
    puts " #{@a} | #{@b} | #{@c} \n --------- \n #{@d} | #{@e} | #{@f} \n --------- \n #{@g} | #{@h} | #{@i} "
  end

end

x = Board.new
x.draw
