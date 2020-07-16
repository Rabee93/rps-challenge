require'rps' # you need to require it because you are using a stub

feature'entering names' do
  scenario'enter players name to play' do
    visit('/')
  fill_in :playername, with:'Rabee'
  click_button 'Submit'
  fill_in :input, with:'rock'
  click_button 'Submit'
(expect(page).to have_content "you win") || (expect(page).to have_content "Computer wins") || (expect(page).to have_content "it's a draw")
end
end
