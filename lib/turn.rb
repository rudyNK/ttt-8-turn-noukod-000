def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, position)
  if position.between?(0,8)
    if !position_taken?(board, position)
      true
    end
  end
  # position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input_to_index(input)
  if valid_move?(board, position)
    move(board, position)
      display_board(board)
  else
    turn(board)
  end
end

def position_taken?(board, index)
  board[location] != " "
end
def move(board, index, current_player = "X")
  board[index] = current_player
end
