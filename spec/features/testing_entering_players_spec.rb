require "spec_helper"

describe "testing players", type: :feature do
  before do
    visit "/"
  end

  scenario "players can fill in their names, submit a form and see the names on-screen" do
    fill_in("player_1", with: "Harry")
    fill_in("player_2", with: "Hermione")
    click_button("submit")
    expect(page).to have_content("Harry")
    expect(page).to have_content("Hermione")
  end
  scenario "player 1 can see player 2 hit points" do
    fill_in("player_1", with: "Harry")
    fill_in("player_2", with: "Hermione")
    click_button("submit")
    expect(page).to have_content "Harry: 100 points"
    expect(page).to have_content "Hermione: 100 points"
    # expect(page).to have_content("Harry")
    # expect(page).to have_content("Hermione")
  end
end
