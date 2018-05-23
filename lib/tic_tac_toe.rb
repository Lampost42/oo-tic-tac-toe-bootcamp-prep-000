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
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index
    @index = @input.to_i - 1
  end
  def move
    @board[@index] = current_player
  end
  def position_taken?
    @board[@index] != " " && @board[@index] != ""
  end
  def valid_move?
    @index.between?(0,8) && !position_taken?
  end
  def turn
    puts "Please enter 1-9:"
    @input = gets.strip
    input_to_index
    if valid_move?
      move
      display_board
    else
      turn
    end
  end
  def turn_count
    @turn = 0
    @board.each do |@space|
      if @space == "X" || @space == "O"
        @turn += 1
      end
    end
  end
  def current_player
    turn_count
    if @turn.even? 
      return "X"
    else
      return  "O"
    end
  end

end 