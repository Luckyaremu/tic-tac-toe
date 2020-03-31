winning-condtions-human = [1,2,3] || [4,5,6] || [7,8,9] || [1,4,7] || [2,5,8] || [3,6,9] || [1,5,9] || [3,5,7]
winning-condtions-robot = [1,2,3] || [4,5,6] || [7,8,9] || [1,4,7] || [2,5,8] || [3,6,9] || [1,5,9] || [3,5,7]
output-human = []
output-computer = []

def game

# human against computer in a game of tic-tac-toe, human always goes first

puts "Welcome to tic-tac-toe, you are player one using X. choose first placement.
your options are 1,2,3,4,5,6,7,8,9"

[1,2,3,4,5,6,7,8,9] = gets.chomp

#player chooses number which get pushed into an array to see if it is meeting winning conditions

#number that is chosen is removed from the options list and they are asked to choose from the remaining numbers

#computer move, will randomly select a number from the remaining options array.this number will be removed from options array and added to its own output array.

puts "player one has chosen 1, computer chooses 2.please choose from remaining options 3,4,5,6,7,8,9"

[3,4,5,6,7,8,9]= gets.chomp

# after each turn computer and human match method is run to see if output numbers are a match, if so

puts "congratulations, you are the winner! play again YES:NO"

YES = gets.chomp , NO = gets.chomp

if YES run game 
else puts "Thank-you for playing"

    #if computer outp matches winning conditions

    puts "Sorry you lost :( play again YES:NO"

    if YES run game 
    else puts "Thank-you for playing"

# once five output numbers are in the players array and winning conditions have not been met

puts "Its a Draw +_+ play again YES:NO"

if YES run game 
else puts "Thank-you for playing"

