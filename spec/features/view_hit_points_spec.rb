require 'spec_helper'
require 'rack/test'

feature 'view hit points' do
  include Rack::Test::Methods

  def app
  Battle.new
  end

#Test is written so that they can be run by Capybara.
  scenario 'player 1 viewing player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Rufus'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens hit points = 60'
  end

end
