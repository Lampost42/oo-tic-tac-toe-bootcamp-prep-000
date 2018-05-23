class TicTacToe
  def initialize(board = nil)
    @board = board || new.Array(9, " ")
  end
end 