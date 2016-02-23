require 'spec_helper'
require 'rack/test'

feature 'entering names' do
  include Rack::Test::Methods

  def app
  Battle.new
  end

#Test is written so that they can be run by Capybara.
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Rufus vs Mittens'
  end

end
