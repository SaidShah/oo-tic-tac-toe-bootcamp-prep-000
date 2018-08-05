class TicTacToe
  
  
  def initialize
    @board = [" "," "," "," "," "," "," "," "," ",]
  end
  
  WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end
  
  def input_to_index(user_input)
num = (user_input.to_i - 1)
end
  
  def move(index,player="X")
 @board[index]=player
end

  def position_taken?(index)
  !(@board[index].nil? || @board[index] == " ")
end
  
  def valid_move?(index)
  if((index.between?(0,8)) && !(position_taken?(index)))
    true
  else
    false
 end
end
  
  
  def turn()
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(index)
    move(index,current_player())
  else
    turn()
  end
  display_board()
end
  
def turn_count()
 counter =0
 @board.each do |turns|
   if ((turns=="X")||(turns=="O"))
     counter+=1
   end
end
counter
end

  
  def current_player()
  total_turns = turn_count()
    (total_turns.even?) ? "X" : "O"
end
  
  def won?()

  is_empty = @board.none? { |c| c=="O" || c=="X" }
 if(is_empty)

 if((is_array_empty()==true)||(@board == nil))
  return false
 else
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end