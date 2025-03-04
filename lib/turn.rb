def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end


def position_taken?(board, index)
  taken = nil
  if board[index] == " " || board[index] == "" || board[index] == nil
    taken = false
  elsif board[index] == "X" || board[index] == "O"
    taken = true
  end
  taken
end


def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end


def input_to_index(user_input)
  user_input.to_i - 1
end


def move(board, position, x_o = "X")
  board[position] = x_o
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
