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

  

def initialize(player_one, player_two)
  @player_one = player_one
  @player_two = player_two
  @winarray = [[a1, a2, a3], [b4, b5, b6], [c7, c8, c9], [a1, b4, c7],
               [a2, b5, c8], [a3, b6, c9], [a1, b5, c9], [a3, b5, c7]]
  outputhuman = []
  outputcomputer = []
  @turn_count = 0
  @field = ['',
            'a1', 'a2', 'a3',
            'b4', 'b5', 'b6',
            'c7', 'c8', 'c9']
end

player_one = Player.new(player_one, 'O')
  player_two = Player.new(player_two, 'X')
  game = Game.new(player_one, player_two)
  # game.turn

  puts 'game just started?'
end

puts "Welcome to tic-tac-toe, you are player one using X. choose first placement.
your options are a1,a2,a3,b4,b5,b6,c7,c8,c9"

if a1 a2 a3 b4 b5 b6 c7 c8 c9 == gets.chomp
else puts 'invalid move'
end

# player chooses number which get pushed into an array to see if it is meeting winning conditions

# number that is chosen is removed from the field options list and they are asked to choose from the remaining numbers

# if player one writes invalid choice, console puts "invalid move"

# payer two, will select a number from the remaining field options array.this number will be removed from options
# array and added to its own output array.

# if player two writes invalid choice, console puts "invalid move"

# after each players turn the field is displayed with X or O replacing the square they have chosen

if @field[move] != 'X' && @field[move] != 'O' && (1..9).include?(move)
  @field[move] = player.marker
else
  puts
  puts 'That is not a valid square. Please try again.'
  get_move(player)
end

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