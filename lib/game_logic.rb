require_relative '../lib/players.rb'
class Game
  def turn
    @turn_count += 1

    player = @turn_count.odd? ? @player_one : @player_two

    get_move(player)
  end
end
