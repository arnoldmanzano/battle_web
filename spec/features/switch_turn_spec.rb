require 'spec_helper'

feature '' do
  scenario '' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content "Jonny's turn"
  end
end
