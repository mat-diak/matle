def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Mat')
  fill_in('player_2', with: 'Victoria')
  click_on('Submit')
end