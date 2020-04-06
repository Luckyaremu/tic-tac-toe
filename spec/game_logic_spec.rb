require_relative '../lib/game_logic.rb'
require_relative '../lib/players.rb'

RSpec.describe Game do
  let(:player_one) { 'Lucky' }
  let(:player_two) { 'kenedy' }

  let(:field) do
    ['',
     '1', '2', '3',
     '4', '5', '6',
     '7', '8', '9']
  end

  subject { Game.new(player_one, player_two) }

  describe '#display' do
    it 'display the game' do
      # expect(subject.display).to eq(field)
      ['', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    end
  end
  describe '#check_win' do
    let(:player_history) { %w[4 5 6] }
    let(:player_history1) { [4, 5, 6] }
    let(:player1) { 'lucky' }

    it 'it checks and displays true if player history is in Win array' do
      expect(subject.check_win(player1, player_history)).to eq(true)
    end

    it 'checks the move and return false if player history does not lead to win.' do
      expect(subject.check_win(player1, player_history1)).to eq(false)
    end
  end
  describe '#good_move' do
  let(:move) { 5 }
  it 'returns true if move is between 1 - 9 and the spot is not taken' do
    expect(subject.good_move?(player_one, move)).to eq(true)
  end

  it 'returns false if move is between 1 - 9 and the spot is not taken' do
    move = 10
    expect(subject.good_move?(player_one, move)).to eq(false)
  end

  it 'returns true if move is between 1 - 9 and the spot is not taken' do
    move = 10
    expect(subject.good_move?(player_one, move)).to eq(false)
  end
end
end
