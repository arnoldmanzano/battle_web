
feature 'Viewing hit points' do

  scenario 'when viewing hit points' do

    sign_in_and_play

    within(:css, "#player_one .hit_points") do
      expect(page).to have_content "100"
    end

    within(:css, "#player_two .hit_points") do
      expect(page).to have_content "100"
    end

  end

end
