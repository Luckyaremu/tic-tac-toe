#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'
def start_game
  puts 'Lets have some fun with tic tac toe game'
  player_one_name = nil
  loop do
    print 'Player one, kindly enter your name: '
    player_one_name = gets.chomp
    break unless player_one_name.empty?

    puts 'Please enter your name here as player one'
  end

  player_two_name = nil
  loop do
    print 'Player two, kindly enter your name: '
    player_two_name = gets.chomp
    break unless player_two_name.empty?

    puts 'Please enter your name here as player two'
  end

  player_one = Player.new(player_one_name, 'X')
  player_two = Player.new(player_two_name, 'O')
  game = Game.new(player_one, player_two)

  game.turn
end

def display
  @field.each_index do |i|
    if (i % 3).zero?
      p @field[(i - 2)..i] unless i.zero?
    end
  end
end

def get_move(player)
  display

  print "(#{player.marker}) Enter any of the moves, #{player.name}: "
  move = gets.chomp.to_i
  player.moves_history << move
  player_history_sorted = player.moves_history.sort.join

  if good_move?(player, move)
    @field[move] = player.marker
  else
    p 'Move is Invalid'
    get_move(player)
  end
  game_won(player, player_history_sorted)
end

def game_won(player, player_history_sorted)
  if check_win(player, player_history_sorted)

    display
    puts "Congratulations, #{player.name}! It's a win!"
    game_over
  elsif @turn_count >= 9
    display
    puts "It's a tie.Try again?"
    game_over

  end
  turn
end

def game_over
  print 'Play again? (Y/N): '
  input = gets.chomp.to_s.downcase

  if input == 'y'
    start_game
  elsif input == 'n'
    puts 'Thanks for trying!'
    exit
  else
    puts "select 'Y or  'N'."
    game_over
  end
end

start_game
