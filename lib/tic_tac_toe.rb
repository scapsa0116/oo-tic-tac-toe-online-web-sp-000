class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
   
 
   WIN_COMBINATIONS = [
     [1,2,3],
     [3,4,5],
     [6,7,8],
     [1,4,8],
     [3,4,6],
     [1,3,6],
     [2,4,7],
     [3,5,8]
     ]

  
  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts"------------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts"------------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
  
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  
  def move(index, token = "X")
    @board[index] = token
  end   
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end 
  
  
  def valid_move?(input)
    index.between?(0,8) && !position_taken(index)
  end
  
  def turn_count
    @board.count {|token| token == "X" || token == "O"}
  end
  
  def curent_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn 
    puts "Player #{curent_player} place your token in any position from 1 to 9"
    input = chomp.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, curent_player)
      display_board
    else
      turn 
    end 
   
   
   
     
end