require_relative 'word_game'

describe WordGame  do
  let (:game) {WordGame.new ("berkeley")}

 it "splits word to guess into an array" do
    expect(game.word_to_guess).to eq ["b", "e", "r", "k", "e", "l", "e", "y"]
  end 
end

#needs more tests