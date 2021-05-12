# frozen_string_literal: true

# class for the board and spaces
class Board
  @spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @board = <<~HEREDOC

     #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}
    ---+---+---
     #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}
    ---+---+---
     #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}

  HEREDOC
  attr_accessor :spaces
end
