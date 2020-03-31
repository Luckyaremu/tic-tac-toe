#!/usr/bin/env ruby

def game_start
  print = 'start game now'
  player_one_name = nil
  loop do
    print 'player one name:'
    player_one_name = gets.chomp
    break unless player_one_name.empty?

    puts 'enter atleast a character'
  end

  player_two_name = nil
  loop do
    print 'player two name:'
    player_two_name = gets.chomp
    break unless player_two_name.empty?
  end

  player_one = Player.new(player_one_name, '0')
  player_two = Player.new(player_two_name, 'x')
  game = Game.new(player_one, player_two)
  game.time
end
game_start
