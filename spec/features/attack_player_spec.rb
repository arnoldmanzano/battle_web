feature 'Attacking player' do

  scenario 'Attacking player two' do

    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Arnold attacked Sean')

  end

  scenario 'Reducing hitpoints' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content(95)
  end
end
