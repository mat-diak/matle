#we wanna see how many hit points player 2 has

feature 'checking player\'s hit points' do
  scenario 'at start-up' do
    sign_in_and_play
    # takes us to /play
    expect(page).to have_content 'Player 2\'s Health: 100'
  end
end