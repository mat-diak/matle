feature 'attack' do
  scenario 'after an attack' do
    sign_in_and_play
    click_on('Attack!')
    expect(page).to have_content 'Player 2 attacked Player 1'
  end
end