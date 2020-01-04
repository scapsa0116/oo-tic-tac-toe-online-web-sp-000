class TicTacToe
  
  def initialize(board = nil)
    @board = board || Aray.new(9, " ")
  end
   
   
   WIN_COMBINATIONS = [
     [1,2,3]
     [3,4,5]
     [6,7,8]
     [1,4,8]
     [3,4,6]
     ]
end