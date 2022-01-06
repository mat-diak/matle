feature 'testing infrastructure' do
  scenario 'it shows testing infrastructure working on the page' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end