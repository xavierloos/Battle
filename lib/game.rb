class Game
  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= 10
  end
end
