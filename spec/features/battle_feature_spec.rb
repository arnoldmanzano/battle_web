
feature 'Adding a user name' do

  scenario 'With user names' do

    visit '/'
    fill_in('player_one', with: 'Arnold')
    fill_in('player_two', with: 'Sean')
    click_button('P L A Y !')
    expect(page).to have_content('Arnold')
    expect(page).to have_content('Sean')

  end

end
