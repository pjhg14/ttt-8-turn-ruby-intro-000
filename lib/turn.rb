def turn(board)
  puts "please enter 1-9:"
  input = gets.strip

  index = input.to_i - 1

  if valid_move?(board, index)
    move(board, index)
    display_board
  else
    puts "Invalid move, try again"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !index.between?(0,8)
    return false
  end

  !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end

end

def move(board, index, token = "X")
  board[index] = token
end
