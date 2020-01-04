class TicTacToe
  
  def initialize(board = nil)
    @board = board || Aray.new(9, " ")
  end
   
def WIN_COMBINATIONS  
   WIN_COMBINATIONS = [
     [1,2,3]
     [3,4,5]
     [6,7,8]
     [1,4,8]
     [3,4,6]
     [1,3,6]
     [2,4,7]
     [3,5,8]
     ]
  end
  
  def display_board
    puts "#{@board[0]}, #{@board[1]}, #{@board[2]}"
    puts"------------"
    puts "#{@board[3]}, #{@board[4]}, #{@board[5]}"
    puts"------------"
    puts "#{@board[6]}, #{@board[7]}, #{@board[8]}"

  end
  
  
  def input_to_index(input)
    input.to_i -1
    
  end
   
   
   
   
     
end