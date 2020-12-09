require "spec_helper"

describe "testing players", type: :feature do
  before(:each) do
    sign_in_and_play
  end

  scenario "players can fill in their names, submit a form and see the names on-screen" do
    expect(page).to have_content("Harry")
    expect(page).to have_content("Hermione")
  end

  scenario "player 1 can see player 2 hit points" do
    expect(page).to have_content "Harry: 100 points"
    expect(page).to have_content "Hermione: 100 points"
  end
  scenario "Player 1 attack" do
    click_link("Attack")
    expect(page).to have_content "Harry attacked Hermione"
  end
end
