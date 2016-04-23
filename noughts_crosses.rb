# Noughts and Crosses
# SovietKetchup
# v1.0.0

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
  def won? board
    # Current board positions
    a = board.instance_variable_get("@a")
    b = board.instance_variable_get("@b")
    c = board.instance_variable_get("@c")
    d = board.instance_variable_get("@d")
    e = board.instance_variable_get("@e")
    f = board.instance_variable_get("@f")
    g = board.instance_variable_get("@g")
    h = board.instance_variable_get("@h")
    i = board.instance_variable_get("@i")

    # Winning combinations
    if a == @side
      if b == @side && c == @side; true
      elsif d == @side && g == @side; true
      elsif e == @side && i == @side; true
      end
    elsif b == @side && e == @side && h == @side; true
    elsif c == @side
      if e == @side && g == @side; true
      elsif f == @side && i == @side; true
      end
    elsif d == @side && e == @side && f == @side; true
    elsif g == @side && h == @side && i == @side; true
    else; false
    end
  end

end

board = Board.new
p1 = Player.new "X"
p2 = Player.new "O"

# Functions for turn taking logic
def game board, p1, p2

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

    # Draw the current board
    board.draw

    # Choose a valid spot
    choice = "z"
    until board.instance_variable_get("@#{choice}") == " "
      puts "Where do you want to go?"
      choice = gets.chomp.downcase
    end

    # Make turn
    board.place choice, player

    # Check for a win
    if player == "X" && p1.won?(board) == true
      a_win = true
      winner = "Xs Won"
    elsif player == "O" && p2.won?(board) == true
      a_win = true
      winner = "Os Won"
    end

    # Change player and increment counter
    if player == "X" then player = "O"
    else player = "X" end
    rounds += 1
  end

  puts "\n\nGAME OVER :: #{winner}"
  # Draw the final board
  board.draw
end

# Run the game
puts "The game will start with Xs"
puts "The board is as follows:
 a | b | c
----------
 d | e | f
----------
 g | h | i
"

game board, p1, p2
