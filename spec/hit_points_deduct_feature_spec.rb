require 'spec_helper.rb'

feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Ina has attacked Jonny'
  end
end
