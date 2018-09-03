def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  # if index.between?(1,9)
  #   if !position_taken?(board, index)
  #     true
  #   end
  # end

  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end
  # position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
  def position_taken?(board, index)
  # basic solution:

  # taken = nil
  # if (board[index] ==  " " || board[index] == "" || board[index] == nil)
  #   taken = false
  # else
  #   taken = true
  # end
  # taken

  # advanced solution w/ ternary operator
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true

end

def turn(board)
  puts "Please enter 1-9:"
end

  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
display_board(board)

def position_taken?(board, location)
  board[location] != " "
end
def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end
