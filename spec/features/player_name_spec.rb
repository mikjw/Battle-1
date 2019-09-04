feature "names form" do
  scenario "expect player names" do
    visit('/')
    fill_in('Player1', with: 'James')
    fill_in('Player2', with: 'Mike')
    click_button('Submit')
    expect(page).to have_content('Player: James - hit points: 10 Player: Mike - hit points: 10')
  end
end
