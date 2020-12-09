feature "Attacking" do
  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content "Hermione: 100 points"
    expect(page).to have_content "Hermione: 90 points"
  end
  scenario "Player 1 attack" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Harry attacked Hermione"
  end
end
