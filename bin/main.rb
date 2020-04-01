# !/usr/bin/env ruby
require_relative '../lib/game_logic.rb'

winningcondtionshuman = [1, 2, 3] || [4, 5, 6] || [7, 8, 9] || [1, 4, 7] ||
                        [2, 5, 8] || [3, 6, 9] || [1, 5, 9] || [3, 5, 7]
outputhuman = []
outputcomputer = []
field = ['',
         'a1', 'a2', 'a3',
         'b4', 'b5', 'b6',
         'c7', 'c8', 'c9']

# Player one against Player two in a game of tic-tac-toe, human always goes first

puts "Welcome to tic-tac-toe, you are player one using X. choose first placement.
your options are a1,a2,a3,b4,b5,b6,c7,c8,c9"

a1, a2, a3, b4, b5, b6, c7, c8, c9 = gets.chomp

# player chooses number which get pushed into an array to see if it is meeting winning conditions

# number that is chosen is removed from the field options list and they are asked to choose from the remaining numbers

# if player one writes invalid choice, console puts "invalid move"

# payer two, will select a number from the remaining field options array.this number will be removed from options
# array and added to its own output array.

# if player two writes invalid choice, console puts "invalid move"

# after each players turn the field is displayed with X or O replacing the square they have chosen

puts 'player one has chosen a1, player two please choose from remaining options a2,a3,b4,b5,b6,c7,c8,c9'

a3, b4, b5, b6, c7, c8, c9 = gets.chomp

# after each turn computer and human match method is run to see if output numbers are a match, if so

puts 'congratulations, you are the winner! play again YES:NO'

YES, = gets.chomp
NO, = gets.chomp

if YES run game
else puts 'Thank-you for playing'
end

# if player two output matches winning conditions

puts 'Sorry you lost :( play again YES:NO'

YES, = gets.chomp
NO, = gets.chomp

if YES run game
else puts 'Thank-you for playing'
end

# once five output numbers are in the player one array and  four output
# numbers in player two array, if winning conditions have not been met

puts 'Its a Draw +_+ play again YES:NO'

if YES run game
else puts 'Thank-you for playing'
end
