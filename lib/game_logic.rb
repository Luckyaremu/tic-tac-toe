require_relative '../lib/players.rb'
class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @win_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
    @turn_count = 0
    @field = ['',
              '1', '2', '3',
              '4', '5', '6',
              '7', '8', '9']
  end

  def check_win(_player, player_history_sorted, won = false)
    @win_array.each do |r1|
      counter = 0

      r1.each do |r2|
        counter += 1 if player_history_sorted.include?(r2.to_s)

        next unless counter == 3

        won = true if counter == 3
      end
    end
    won
  end

  def turn
    @turn_count += 1

    player = @turn_count.odd? ? @player_one : @player_two

    get_move(player)
  end
end
