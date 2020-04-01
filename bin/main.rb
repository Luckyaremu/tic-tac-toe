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

  player_one = Player.new(player_one, '0')
  player_two = Player.new(player_two, 'x')
  game = Game.new(player_one, player_two)
  #game.turn

  puts "game just started?"
end

def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winarray = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
    @turn_count = 0
    @field = ['',
              '1', '2', '3',
              '4', '5', '6',
              '7', '8', '9']
  end

game_start
