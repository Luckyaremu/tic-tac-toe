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

  player_one = Player.new(player_one, 'O')
  player_two = Player.new(player_two, 'X')
  game = Game.new(player_one, player_two)

  game.turn

  puts 'game just started?'
end

def initialize(player_one, player_two)
  @player_one = player_one
  @player_two = player_two
  @winarray = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
               [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  # outputhuman = []
  # outputcomputer = []
  @turn_count = 0
  @field = ['',
            '1', '2', '3',
            '4', '5', '6',
            '7', '8', '9']
end

player_one = Player.new(player_one, 'O')
player_two = Player.new(player_two, 'X')
game = Game.new(player_one, player_two)
# game.turn

puts "Welcome to tic-tac-toe, you are player one using X. choose first placement.
your options are a1,a2,a3,b4,b5,b6,c7,c8,c9"

puts 'player one has chosen a1, player two chooses a2.please choose from remaining options a3,b4,b5,b6,c7,c8,c9'

if a3 b4 b5 b6 c7 c8 c9 = gets.chomp
else puts 'invalid move'
end

# after each turn player one and player two match method is run to see if output numbers are a match, if so

puts 'congratulations, you are the winner! play again YES:NO'

YES = gets.chomp
NO = gets.chomp

if YES run game
else puts 'Thank-you for playing'
end
# if player two outp matches winning conditions

puts 'Sorry you lost :( play again YES:NO'

if YES run game
else puts 'Thank-you for playing'
end
# once five output numbers are in the player one array and  four output
# numbers in player two array, if winning conditions have not been met

puts 'Its a Draw +_+ play again YES:NO'

if YES run game
else puts 'Thank-you for playing'
end
game_start

=begin
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

def display_board
  @field.each_index do |i|
    if (i % 3).zero?
      p @field[(i - 2)..i] unless i.zero?
    end
  end
end

def get_move(player)
  display_board

  print "(#{player.marker}) Enter choice number, #{player.name}: "
  move = gets.chomp.to_i
  player.moves_history << move
  player_history_sorted = player.moves_history.sort.join

  if good_move?(player, move)
    @field[move] = player.marker
  else
    p 'Invalid Move'
    get_move(player)
  end
  player_won(player, player_history_sorted)
end

game_start
=end
