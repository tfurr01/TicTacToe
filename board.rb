# frozen_string_literal: true

# class for the board and spaces
class Board
  attr_accessor :spaces

  def initialize
    @spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw
    puts <<~HEREDOC

      #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}
      ---+---+---
      #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}
      ---+---+---
      #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}

    HEREDOC
  end

  def add_move(move, player_symbol)
    @spaces[move - 1] = player_symbol
  end

  def validate(move)
    puts 'Invalid move! Please choose an empty space.' unless move.between?(1, 9)
  end
end
