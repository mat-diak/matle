feature 'filling in a form' do
  scenario 'inputting player names' do
    visit('/')
    fill_in('player_1', with: 'Mat')
    fill_in('player_2', with: 'Victoria')
    click_on('Submit')
    expect(page).to have_content 'Mat vs Victoria'
  end
end