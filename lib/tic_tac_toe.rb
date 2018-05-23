class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  WIN_COMBINATIONS = [
  [2,4,6],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [0,1,2],
  [1,4,7],
  [2,5,8]
  ]
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  def input_to_index(user_input)
    @index = user_input.to_i - 1
  end
  def move
    @board[@index] = @current_player
  end
  def position_taken?
    @board[@index] != " " && @board[location] != ""
  end
end 