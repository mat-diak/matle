feature 'filling in a form' do
  scenario 'inputting player names' do
    sign_in_and_play
    expect(page).to have_content 'Mat vs Victoria'
  end
end