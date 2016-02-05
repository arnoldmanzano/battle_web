require 'spec_helper'

feature 'attack other player' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(60)
    first_turn
    expect(page).to have_content('Mittens loses')
  end
end
