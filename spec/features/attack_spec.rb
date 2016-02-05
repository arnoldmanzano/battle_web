require 'spec_helper'

feature 'attack other player' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack Mittens')
    expect(page).to have_content('Rufus has attacked Mittens')
  end

  scenario 'Player 1 reduces Player 2 hit points by 10' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_button('Attack Mittens')
    click_link('PLAY')
    expect(page).to have_content 'Mittens hit points = 50'
  end
end
