
def sign_in_and_play
  visit '/'
  fill_in('player_one', with: 'Arnold')
  fill_in('player_two', with: 'Sean')
  click_button('P L A Y !')
end
