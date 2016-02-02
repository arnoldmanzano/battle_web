
feature 'Viewing hit points' do

  scenario 'when viewing hit points' do

    # visit '/'
    # fill_in('player_one', with: 'Arnold')
    # fill_in('player_two', with: 'Sean')
    # click_button('P L A Y !')
    visit '/play'

    within(:css, "#player_one .hit_points") do
      expect(page).to have_content "100"
    end

    within(:css, "#player_two .hit_points") do
      expect(page).to have_content "60"
    end

  end

end
