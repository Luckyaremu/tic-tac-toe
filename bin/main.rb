#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'
def game_start
  puts 'time for tic-tac-toe game, lets have some fun'
  player_one_name = nil
  loop do
    print 'player one name:'
    player_one_name = gets.chomp
    break unless player_one_name.empty?

    puts 'Kindly enter a name here for player one'
  end

  player_two_name = nil
  loop do
    print 'player two name:'
    player_two_name = gets.chomp
    break unless player_two_name.empty?
    puts 'Kindly enter a name here for player two'
  end

  player_one = Player.new(player_one_name, '0')
  player_two = Player.new(player_two_name, 'x')
  game = Game.new(player_one, player_two)
  game.time
end
game_start
