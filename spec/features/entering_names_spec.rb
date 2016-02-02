require 'spec_helper'
require 'rack/test'

describe 'entering names' do
  include Rack::Test::Methods

  def app
  Battle.new
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rufus'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Rufus vs Mittens'

  end
end
