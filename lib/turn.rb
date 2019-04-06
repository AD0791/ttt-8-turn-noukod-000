# create the display board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Check if position is position_taken

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

# Check the move is valid

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end

# convert input to integer

def input_to_index tato
  tato.to_i - 1
end

# make move possible 

def move(board,index= input_to_index(tato),posdepart="X")
  board[index] = posdepart
end

# Turn

def turn board
  puts "Please enter 1-9:"
  input = gets.strip
  value = input_to_index(input)
  valid_move?(board,index = value)
  
end