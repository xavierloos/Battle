def sign_in_and_play
  visit "/"
  fill_in("player_1", with: "Harry")
  fill_in("player_2", with: "Hermione")
  click_button("submit")
end